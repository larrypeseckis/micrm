# Closure evaluation: candidate 65.2, claim-bounded verification

*Prepared 2026-07-17 (America/Denver). Evaluator: MICRM Claude (correlated rater; disposition below is a reviewer input to the protocol, not a final state). Source state: register r10, SHA-256 b0bb2c6023a6547fafa6143e29ddb88e5e80b19c55674f65a937588cdb0d3945, Section 65 proposition 2. Evaluated under Candidate Admission and Closure Protocol v0.2 (5d9e65f8) against the ratified claim-bounded functional mediation boundary (Section 91) and investigative-frame authority class (Section 92).*

## Candidate text under evaluation

"A restricted system may satisfy an audit obligation without unrestricted disclosure only where an independently supported mechanism verifies the specific claim at issue, identifies its scope and dependencies, and discloses the residual dark surface."

## Criterion findings

**4.1 Provenance and identity:** established. Cluster 6, r8 origin, unchanged through r10.

**4.2 Gap necessity.** Split finding. The permissive half, that restricted systems can satisfy evidentiary burden without unrestricted disclosure, is derivable: canonical v0.2's standard is "independently supported structural evidence," which is mechanism-neutral and nowhere requires public or unrestricted disclosure. A scoped confidential audit that produces independently supported structural evidence of the specific claim already satisfies v0.2. No accountability result fails if 65.2 is absent, the same finding that closed 65.1 as Derivative. However, 65.2 contains one element v0.2 does not require explicitly: identification of the verification mechanism's scope and dependencies as a condition of the evidence counting, the verifier-dependence profile. v0.2's control-independence criteria imply it for witnesses generally but do not state it as a named obligation for alternative-verification mechanisms. That is the candidate's sole non-derivable content.

**4.3 Exact-claim sufficiency.** Two defects. First, "independently supported mechanism" is ambiguous between (a) a mechanism whose findings are independently supported and (b) a mechanism independent of the audited party. Both are required and the wording asserts neither cleanly; independence must be stated per named error class, consistent with the cluster 1 and 2 decorrelation results. Second, the conditions list is incomplete as a necessary-conditions claim: it omits execution binding, without which a verified artifact claim silently extends to runtime events. 65.3 covers execution binding separately, so the repair is a cross-reference, not new content, but an "only where" list that omits a necessary condition is exactly the defect class criterion 4.3 exists to catch.

**4.4 Non-redundancy.** The candidate is one face of a four-faced rule currently split across the proposition list. 65.1 (restricted status cannot reduce burden) is its negative guard, already closed Derivative with preserved wording. 65.7 (verification establishes only claims inside verified scope) is its ceiling. 65.10 (unavailable evidence leaves exit unestablished) is its burden corollary. The four are not independent propositions; they are the permission, guard, ceiling, and default of a single restricted-evidence verification rule. Closing 65.2 standalone would leave 65.7 and 65.10 to be closed against it later and would multiply core text. The register's own inventory anticipated this: 65.7's closure question asks whether it is already implied by 65.2 plus attestation scope.

**4.5 Scope classification.** Split. The mechanism-neutrality clarification, that v0.2's evidence standard is satisfiable under restricted disclosure through scoped independent verification, is one sentence of core spine refinement. The conditions apparatus, verifier-dependence profile, claim-bounded audit record, and limitations fields, is record and conformance material, already drafted as record 66.1. Recommending the candidate whole into the core would import implementation; rejecting it whole would lose the one non-derivable obligation.

**4.6 Substrate treatment:** passes. Cleared-verifier (67.9), proprietary classifier, compiled-artifact, and institutional-privilege cases all instantiate without substrate-specific wording.

**4.7 Operational findings:** established / excluded / unresolved map directly onto record 66.1's finding field. No new finding vocabulary needed.

**4.8 Evidence and dark-surface treatment:** the disclosed-residual-dark-surface condition is consistent with core rules and is load-bearing: a scoped verification that does not bound what it could not see manufactures apparent assurance.

**4.9 Adversarial pressure.** Three vectors. (1) Narrow-claim laundering: an interested party selects an artificially narrow claim, obtains genuine scoped verification, and presents the system as audited. 65.2 as worded does not resist this, because it takes "the specific claim at issue" as given. Under the ratified investigative-frame authority class this is now a required linkage, not an optional one: the verified claim's selection authority must itself be owned, evidenced, and reflected in the resulting dark surface. This is the evaluation's principal finding. (2) Verifier capture: a dependent verifier passes the letter of "independently supported"; repaired by the per-error-class independence wording from 4.3. (3) Public scope creep: verified narrow claim reported as broad assurance; this is 65.7's job and supports consolidation rather than standalone closure.

**4.10 Interaction consistency.** Consistent with the ratified functional-mediation boundary: record 66.1's audit-boundary field must include functionally mediating components at claim resolution, which the boundary ruling already requires. Consistent with 65.3, 65.4, 65.9 by cross-reference. The investigative-frame linkage in 4.9 is the one interaction the current wording lacks.

**4.11 Scope-authority ownership:** the candidate itself does not expand MICRM's scope; no author ruling required beyond dispositions already recorded.

**4.12 Open questions affected:** cluster 6 questions 1, 2, 3, and 12 are partially resolved by this evaluation's classification; question 2 (minimum verifier independence per claim and error class) becomes the consolidated rule's principal remaining open question.

## Recommended disposition

**Consolidate, split placement.** Specifically:

1. This pass closes 65.2 with finding: not admissible standalone; sole non-derivable content is the scope-and-dependencies disclosure obligation; wording defects per 4.3.
2. Recommend a successor candidate, the restricted-evidence verification rule, consolidating 65.2 (permission), 65.7 (ceiling), and 65.10 (burden default), with 65.1's preserved wording as its guard sentence, subject to 65.7 and 65.10 receiving their own one-at-a-time passes that confirm or refute the merge. The one-at-a-time rule is respected: this pass disposes only 65.2; the consolidation is a recommendation binding nothing until the other passes run.
3. Placement split: one core spine sentence (mechanism-neutral evidence standard, satisfiable under restricted disclosure only through independent, claim-scoped verification with disclosed dependencies and dark surface, bound to execution per the execution-binding rule, under owned claim-selection authority); records 66.1 and the verifier-dependence profile as record requirements; reporting-scope discipline as conformance.
4. Required wording repairs for the successor: per-error-class verifier independence; execution-binding cross-reference; investigative-frame linkage for claim selection.

## Candidate closure record (proposed)

```text
candidate closure record:
  candidate identifier: 65.2 Claim-bounded verification
  exact source state: r10, SHA-256 b0bb2c6023a6547fafa6143e29ddb88e5e80b19c55674f65a937588cdb0d3945
  canonical gap addressed: explicit conditions under which restricted systems satisfy evidentiary burden without unrestricted disclosure
  failure if absent: no accountability result fails; v0.2's mechanism-neutral standard already permits scoped verification; absent the explicit rule, the scope-and-dependencies disclosure obligation and the narrow-claim laundering resistance are unstated
  non-redundancy finding: permission half derivable; scope-and-dependencies obligation non-derivable; overlaps 65.7 and 65.10 as one rule with 65.1 as guard
  scope classification: split; one core spine sentence, records and conformance for the remainder
  known defects: independence ambiguity; missing execution-binding condition; missing claim-selection authority linkage under Section 92
  reviewer disposition: Consolidate into restricted-evidence verification rule, pending 65.7 and 65.10 passes
  Larry disposition: pending
  final state: pending author disposition
```

## Rater note

This evaluation is one draw from the same distribution as the register's development. The narrow-claim laundering finding depends on the investigative-frame ruling made two revisions ago by this same dialogue; a decorrelated reviewer should specifically re-test whether the consolidation recommendation under-weights the value of four separate short propositions for readers who will encounter them without the closure history.
