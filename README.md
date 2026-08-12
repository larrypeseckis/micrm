# MICRM — Machine-Initiated Consequence Reference Model

A formal reference model for keeping four questions separate while allowing their
results to compose: material consequence structure, authority and accountability
closure, contribution-sensitive candidacy, and evidentiary warrant.

MICRM is presented as a formalized reference model exercised against independently
authored sealed patterns. It is **not** a completed theory of machine accountability
and **not** a universally validated substrate-neutral framework. A substantial
portion of the model remains untested, substrate neutrality is not established, and
several privacy questions are named and left open. The paper states these boundaries
explicitly; they are part of the contribution, not omitted from it.

## Contents

```
paper/   MICRM-PAPER-PRESENTED-v02.md          the expository paper
spec/    MICRM-FORMAL-SEMANTICS-BLOCK1 … BLOCK4  the normative specification (frozen)
```

The specification blocks are normative and frozen. The paper is expository and cites
the blocks by hash. No normative content exists only in the paper.

## Verifying the artifacts

Every artifact is bound by SHA-256 over its raw bytes. The paper's provenance
appendix (§2.1) records the presented commit and these hashes. To verify, compute
the digest of each file and compare.

PowerShell:

```
Get-FileHash paper\MICRM-PAPER-PRESENTED-v02.md -Algorithm SHA256
Get-ChildItem spec\*.md | Get-FileHash -Algorithm SHA256
```

Unix:

```
sha256sum paper/*.md spec/*.md
```

Presented artifact hashes (from §2.1):

```
paper/MICRM-PAPER-PRESENTED-v02.md
  a7cdc7ebb49760bf893547fef7b70d5caa444d6881e64b4a023e0c4192691d07   (presented commit da2bafd5)

spec/MICRM-FORMAL-SEMANTICS-BLOCK1-GRAPH-AND-CONSEQUENCE-v01.md
  3b850a77a1e199a5f5c45b50d85f284353f770fbebb6deb43a53d4d5e9e391c1

spec/MICRM-FORMAL-SEMANTICS-BLOCK2-ROOT-CLOSURE-CANDIDACY-v01.md
  44b780353674c0202e004362e1613dc513c39cf4a0658caac2b4310ce333be64

spec/MICRM-FORMAL-SEMANTICS-BLOCK3-ATTACHMENT-PROPAGATION-EXCLUSION-v01.md
  f5ec01de7e4dfb5d81b7b506e7ceb680f2bfcb1a79376456ffee2f5f66c71cb8

spec/MICRM-FORMAL-SEMANTICS-BLOCK4-BURDENS-CLASSES-INDEPENDENCE-v01.md
  cbae193958c20f9cd01c142cfb18e10881a21b126da4881b884a6cb140a8f1bc
```

The paper hash above is the hash of the paper **as presented at commit da2bafd5**.
The discharge of the archive binding was added in a later commit and does not alter
the presented artifacts it binds.

## Status

Published and archive-bound. Not finished work. The reproduction procedure for the
validation record is specified in the paper and is independently executable from
this release.
