# Closure deliverable: 65.2 record (corrected) and 65.7 evaluation

*Prepared 2026-07-17 (America/Denver). Evaluator: MICRM Claude (correlated rater). Source state: register r10, SHA-256 b0bb2c6023a6547fafa6143e29ddb88e5e80b19c55674f65a937588cdb0d3945. Incorporates reviewer response SHA-256 da4062b9168821d3b63d5c06564c24719cba21fb4b2d1c6c7db039ea04936bef. Protocol v0.2 (5d9e65f8).*

## Part 1: candidate 65.2 closure record, corrections integrated

Both reviewer corrections are accepted and integrated.

Correction 1 accepted: independence is a property of the verification arrangement relative to the named error class, not of the generator's location. A proof or attestation generated inside the evaluated root can be independently verifiable, and the mathematics or hardware root that verifies it can carry near-zero correlated-error risk for the proven claim class. The categorical generator-independence requirement in the prior evaluation would have excluded mechanisms that pressure test 67.6 treats as legitimate, and was less exact than the error-class-relative decorrelation framework it cited.

Correction 2 accepted: evidence binds to the object of the claim. Artifact-identity claims require identity, version, and custody binding; execution binding is required only where the claim extends to runtime action or consequence, per 65.3. The prior evaluation's "the conditions list omits execution binding" was itself an overbroad necessary-conditions claim.

```text
candidate closure record:
  candidate identifier: 65.2 Claim-bounded verification
  exact source state: r10, SHA-256 b0bb2c6023a6547fafa6143e29ddb88e5e80b19c55674f65a937588cdb0d3945
  canonical gap addressed: explicit conditions under which restricted systems satisfy evidentiary burden without unrestricted disclosure
  failure if absent: no accountability result fails; the explicit scope, dependency, dark-surface, and investigative-frame obligations would remain unstated
  non-redundancy finding: permission half derivable from v0.2's mechanism-neutral evidence standard; scope, dependency, dark-surface, and investigative-frame obligations non-derivable; overlaps 65.1, 65.7, 65.10
  scope classification: split; core spine content carried into successor, records and conformance for the remainder
  binding rule: evidence bound to the object of the claim; execution binding required only for runtime claims (65.3)
  independence rule: sufficient independence of the verification arrangement for the named error class, with verifier, mechanism, and trust dependencies disclosed; generator location not categorically restricted
  load-bearing retained finding: narrow-claim laundering; claim-selection authority owned and recorded under investigative-frame authority
  reviewer disposition: Superseded as standalone; surviving content carried into registered successor candidate, Restricted-evidence verification
  Larry disposition: pending
  final state: pending author disposition
```

One drafting note for the successor, non-blocking: the provisional rule is a single sentence of roughly 110 words. At draft-admission time it should be rendered as numbered conditions in the register's house style, both for parseability and because criterion 4.3 applies to successors too.

## Part 2: closure evaluation, candidate 65.7, Alternative-verification ceiling

Candidate text (r10 line 2452): "A clean room, auditor statement, attestation, cryptographic proof, enclave, or selective-disclosure mechanism establishes only the claims inside its verified scope. It does not silently extend to unobserved events, omitted fields, causal explanations, or Consequences."

Closure question: is it already implied by claim-bounded verification and attestation scope?

**4.1 Provenance and identity:** established; cluster 6, r8 origin, unchanged through r10.

**4.2 Gap necessity.** The ceiling's general content is doubly covered: v0.2's exact-claims and claim-relative evidence discipline already imply that a finding does not exceed its support, and the provisional successor's sentence "the finding extends no further than its verified scope" states the single-mechanism ceiling directly. No accountability result fails if 65.7 is absent as a standalone proposition. Two elements resist full absorption. First, the causal-explanation exclusion: a verification mechanism can establish execution and control facts while establishing nothing about causal explanation, which is cluster 1's causal-fidelity ceiling reappearing on the verification side; the successor should name it rather than leave it under "scope." Second, and this is the pass's principal finding: **scope composition**. The candidate and the successor both govern one mechanism's one scope. Neither addresses the composition case: multiple narrow verifications, each genuinely valid, presented jointly as covering a system-level claim. The union of verified scopes covering the claimed scope is itself a finding requiring evidence, including the seams between scopes, and without it, assurance inflation survives the single-mechanism ceiling by aggregation. This is the bypass-completeness logic of 7.3 applied to evidence coverage rather than execution paths, and it is not derivable from any current candidate or from v0.2.

**4.3 Exact-claim sufficiency:** the mechanism enumeration is illustrative and should be marked as such at drafting ("including but not limited to" or the register's equivalent), preventing a reading where an unlisted mechanism escapes the ceiling.

**4.4 Non-redundancy:** overlaps the successor's ceiling sentence near-completely for the single-mechanism case; the causal-explanation exclusion and the composition rule are the non-redundant residue.

**4.5 Scope classification:** the ceiling and composition rules are successor content (core spine via the consolidated rule); the enumeration is drafting guidance.

**4.6 Substrate treatment:** passes; cleared-verifier, enclave, institutional-auditor, and OT acceptance-test cases instantiate without substrate wording.

**4.7 Operational findings:** scope-coverage finding takes established / excluded / unresolved; composition finding likewise. Maps onto record 66.1 with one added field (see below).

**4.8 Evidence and dark-surface treatment:** consistent; the seams between composed scopes are precisely manufactured dark surface if undisclosed, which ties composition to the investigative-frame dark-surface rule.

**4.9 Adversarial pressure.** (1) Aggregation inflation, covered above, the principal vector. (2) Enumeration escape, covered by 4.3 repair. (3) Temporal inflation: a valid verification of scope S at time T presented as covering S now; repaired by requiring the verified scope to carry its validity interval, which connects to the 7.2 Gate-to-Actuation validity continuity candidate and needs no new rule, only a cross-reference at drafting.

**4.10 Interaction consistency:** consistent with 65.2's successor, 65.3, ratified investigative-frame authority (composition claims are frame-selected and must be owned), and 7.2 via the temporal note.

**4.11 Scope-authority ownership:** no scope expansion; no author ruling required beyond disposition.

**4.12 Open questions affected:** cluster 6 question 3 (which claims supportable without direct inspection) gains the composition constraint; question 10 (stating unresolved causal explanation while establishing bounded facts) is directly served by the causal-explanation exclusion.

```text
candidate closure record:
  candidate identifier: 65.7 Alternative-verification ceiling
  exact source state: r10, SHA-256 b0bb2c6023a6547fafa6143e29ddb88e5e80b19c55674f65a937588cdb0d3945
  canonical gap addressed: assurance inflation beyond a verification mechanism's verified scope
  failure if absent: no accountability result fails for the single-mechanism case; aggregation inflation across multiple scoped verifications would remain unaddressed anywhere
  non-redundancy finding: single-mechanism ceiling absorbed by the 65.2 successor; causal-explanation exclusion and scope-composition rule are non-derivable surviving content
  scope classification: successor content; enumeration as drafting guidance
  required successor additions: composition clause (findings from multiple restricted verifications compose only where the union of verified scopes, including their seams, is itself evidenced to cover the claimed scope); explicit causal-explanation exclusion; validity-interval cross-reference to 7.2
  record impact: claim-bounded audit record gains a composed-scope field: component verifications, scope union evidence, seam disclosure, composition finding (established / excluded / unresolved)
  reviewer disposition: Superseded as standalone; surviving content carried into the Restricted-evidence verification successor with the three additions above
  Larry disposition: pending
  final state: pending author disposition
```

## Rater note

The composition finding strengthens the case for consolidation rather than weakening it: three of four propositions now contribute clauses to one rule, which is evidence they were one rule. The decorrelated-review question from the prior pass stands, and gains a specific test: whether the successor, now carrying permission, guard, ceiling, composition, causal exclusion, and burden default, has crossed from consolidation into overload, and should split along the claim/mechanism boundary instead.
