#!/usr/bin/env bash
# MICRM deterministic package builder.
# Counts are derived from the actual file set, never typed.
#
# Usage:
#   build-package-v2.sh <package-name> <verification-template> \
#     <verification-output> <file1> [file2 ...]
#
# Required template tokens:
#   {{ARCHIVE_ENTRIES}} {{MANIFESTED_ENTRIES}}
# Optional safe tokens:
#   {{MANIFEST_FILENAME}} {{PACKAGE_FILENAME}}
#
# The generated verification record is packaged and therefore must NOT contain
# {{MANIFEST_HASH}} or {{PACKAGE_HASH}}. Those values are written to a detached
# receipt after the manifest and package exist, avoiding circular self-hashes.
set -euo pipefail

usage() {
  echo "Usage: $0 <package-name> <verification-template> <verification-output> <file1> [file2 ...]" >&2
  exit 64
}

[[ $# -ge 4 ]] || usage
pkgname=$1
template=$2
vrec=$3
shift 3
files=("$@")

manifest="SHA256SUMS-${pkgname}.txt"
zipname="${pkgname}.zip"
receipt="RECEIPT-${pkgname}.txt"

validate_name() {
  local p=$1
  [[ "$p" != /* ]] || { echo "Absolute paths are not allowed: $p" >&2; exit 65; }
  [[ "$p" != ./* ]] || { echo "Remove leading './' from path: $p" >&2; exit 65; }
  [[ "/$p/" != *"/../"* && "/$p/" != *"/./"* ]] || {
    echo "Dot path components are not allowed: $p" >&2; exit 65;
  }
  [[ "$p" != *$'\n'* && "$p" != *$'\r'* ]] || {
    echo "Newlines are not allowed in filenames: $p" >&2; exit 65;
  }
}

validate_input() {
  local p=$1
  validate_name "$p"
  [[ -f "$p" ]] || { echo "Missing regular file: $p" >&2; exit 66; }
}

validate_input "$template"
validate_name "$vrec"
[[ "$template" != "$vrec" ]] || {
  echo "Verification template and generated output must be different files." >&2
  exit 65
}
for f in "${files[@]}"; do validate_input "$f"; done

# Reject duplicate inputs and collisions with generated outputs.
declare -A seen=()
for f in "${files[@]}"; do
  [[ -z "${seen[$f]+x}" ]] || { echo "Duplicate input path: $f" >&2; exit 65; }
  seen[$f]=1
  case "$f" in
    "$template"|"$vrec"|"$manifest"|"$zipname"|"$receipt")
      echo "Input collides with a template or generated output: $f" >&2; exit 65 ;;
  esac
done
for out in "$vrec" "$manifest" "$zipname" "$receipt"; do
  [[ -z "${seen[$out]+x}" ]] || { echo "Output collision: $out" >&2; exit 65; }
done

# In-package self-hashes are circular and therefore forbidden.
if grep -Eq '\{\{(MANIFEST_HASH|PACKAGE_HASH)\}\}' "$template"; then
  echo "Verification template contains MANIFEST_HASH or PACKAGE_HASH." >&2
  echo "Those hashes belong in the detached receipt, not inside the package." >&2
  exit 65
fi

# Counts derive from substantive files plus the generated verification record.
manifested_count=$((${#files[@]} + 1))
archive_count=$((manifested_count + 1))  # + manifest; receipt and template stay detached

# Generate a fresh verification record from the unchanged template.
python3 - "$template" "$vrec" "$archive_count" "$manifested_count" "$manifest" "$zipname" <<'PY'
from pathlib import Path
import sys

src = Path(sys.argv[1])
dst = Path(sys.argv[2])
archive_count, manifested_count = sys.argv[3], sys.argv[4]
manifest_name, package_name = sys.argv[5], sys.argv[6]
raw = src.read_bytes()
required = [b"{{ARCHIVE_ENTRIES}}", b"{{MANIFESTED_ENTRIES}}"]
for token in required:
    if token not in raw:
        raise SystemExit(f"Required token missing from template: {token.decode()}")
replacements = {
    b"{{ARCHIVE_ENTRIES}}": archive_count.encode(),
    b"{{MANIFESTED_ENTRIES}}": manifested_count.encode(),
    b"{{MANIFEST_FILENAME}}": manifest_name.encode(),
    b"{{PACKAGE_FILENAME}}": package_name.encode(),
}
for old, new in replacements.items():
    raw = raw.replace(old, new)
for token in required:
    if token in raw:
        raise SystemExit(f"Required token replacement failed: {token.decode()}")
dst.parent.mkdir(parents=True, exist_ok=True)
dst.write_bytes(raw)
PY

manifested=("${files[@]}" "$vrec")
mapfile -t manifested_sorted < <(printf '%s\n' "${manifested[@]}" | LC_ALL=C sort)

# Manifest covers every packaged file except itself.
sha256sum "${manifested_sorted[@]}" > "$manifest"
actual_manifested=$(wc -l < "$manifest" | tr -d '[:space:]')
[[ "$actual_manifested" -eq "$manifested_count" ]] || {
  echo "MANIFEST COUNT MISMATCH: $actual_manifested vs derived $manifested_count" >&2
  exit 1
}

# Build a deterministic ZIP using sorted membership, fixed timestamps, and
# normalized permissions (0755 for executable files, otherwise 0644).
archive_files=("${manifested_sorted[@]}" "$manifest")
mapfile -t archive_sorted < <(printf '%s\n' "${archive_files[@]}" | LC_ALL=C sort)
rm -f "$zipname"
python3 - "$zipname" "${archive_sorted[@]}" <<'PY'
from pathlib import Path
from zipfile import ZIP_DEFLATED, ZipFile, ZipInfo
import os
import stat
import sys

zip_path = Path(sys.argv[1])
files = [Path(p) for p in sys.argv[2:]]
with ZipFile(zip_path, "w", compression=ZIP_DEFLATED, compresslevel=9) as zf:
    for path in files:
        mode = 0o755 if (stat.S_IMODE(path.stat().st_mode) & 0o111) else 0o644
        info = ZipInfo(path.as_posix(), date_time=(1980, 1, 1, 0, 0, 0))
        info.compress_type = ZIP_DEFLATED
        info.external_attr = ((stat.S_IFREG | mode) & 0xFFFF) << 16
        zf.writestr(info, path.read_bytes())
PY

manhash=$(sha256sum "$manifest" | awk '{print $1}')
pkghash=$(sha256sum "$zipname" | awk '{print $1}')
vhash=$(sha256sum "$vrec" | awk '{print $1}')

# Verify exact archive membership and manifest validity from a clean extraction.
tmp=$(mktemp -d)
expected=$(mktemp)
actual=$(mktemp)
trap 'rm -rf "$tmp" "$expected" "$actual"' EXIT
unzip -qq "$zipname" -d "$tmp"
(
  cd "$tmp"
  sha256sum -c "$manifest" >/dev/null
)

actual_entries=$(zipinfo -1 "$zipname" | wc -l | tr -d '[:space:]')
[[ "$actual_entries" -eq "$archive_count" ]] || {
  echo "ARCHIVE COUNT MISMATCH: $actual_entries vs derived $archive_count" >&2
  exit 1
}

printf '%s\n' "${archive_sorted[@]}" | LC_ALL=C sort > "$expected"
zipinfo -1 "$zipname" | LC_ALL=C sort > "$actual"
cmp -s "$expected" "$actual" || {
  echo "ARCHIVE MEMBERSHIP MISMATCH" >&2
  diff -u "$expected" "$actual" >&2 || true
  exit 1
}

# Detached receipt can truthfully hash both the manifest and package.
cat > "$receipt" <<EOF_RECEIPT
MICRM package receipt
package name: $pkgname
package file: $zipname
package SHA-256: $pkghash
manifest file: $manifest
manifest SHA-256: $manhash
verification record: $vrec
verification-record SHA-256: $vhash
archive entries (derived and verified): $archive_count
manifested entries (derived and verified): $manifested_count
manifest excludes itself: yes
verification template packaged: no
receipt packaged: no
EOF_RECEIPT
receipthash=$(sha256sum "$receipt" | awk '{print $1}')

echo "package:      $pkghash  $zipname"
echo "manifest:     $manhash  $manifest"
echo "verification: $vhash  $vrec"
echo "receipt:      $receipthash  $receipt"
echo "archive entries (derived, verified):   $archive_count"
echo "manifested entries (derived, verified): $manifested_count"
echo "self-check: manifest, count, and exact membership PASS"
