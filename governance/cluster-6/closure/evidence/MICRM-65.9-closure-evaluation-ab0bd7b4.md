# Closure evaluation: candidate 65.9, Audit-boundary completeness

*Prepared 2026-07-17 (America/Denver). Evaluator: MICRM Claude (correlated rater). Source state: register r10, SHA-256 b0bb2c6023a6547fafa6143e29ddb88e5e80b19c55674f65a937588cdb0d3945, Section 65 proposition 9. Protocol v0.2 (5d9e65f8). Evaluated against the repaired Mediation-boundary eligibility and participation successor from review response 23903d01cad0494e9783ec3f5ad222e9298f1424cd7f6d07c1b33fcaf8f2216d.*

## Candidate text under evaluation

"An audit of the primary model is insufficient where another component can alter the request, Context, selected action, Actuation, or retained record. The boundary must include every component capable of carrying the alleged contribution class."

## Assigned question

Does anything survive beyond the repaired eligibility clause?

## Answer

Almost nothing survives as core. Sentence 2 is the eligibility successor with weaker wording and is fully absorbed. Sentence 1 carries one surviving element that is not eligibility and not currently stated anywhere: a completeness-of-boundary finding, distinct from any single component's eligibility. It survives as one clause on the eligibility successor, not as a standalone proposition.

## Criterion findings

**4.1 Provenance and identity:** established; cluster 6, r8 origin, unchanged through r10.

**4.2 Gap necessity, sentence by sentence.** Sentence 2, "the boundary must include every component capable of carrying the alleged contribution class," is the eligibility successor's capacity clause, and in a strictly weaker form: it says "capable of carrying" where the repaired successor correctly requires evidence-supported claim-relevant capacity on an evidence-compatible path during the relevant interval at the selected resolution. The candidate's bare "capable" is exactly the flooding formulation the review response repaired. Fully absorbed, and the successor's version supersedes it as an improvement, not merely a restatement. Sentence 1, "an audit of the primary model is insufficient where another component can alter [the run]," carries two claims. The first is per-component: a non-primary component with altering capacity is eligible. Absorbed into eligibility. The second is the surviving element: it asserts a property of the audit as a whole, that a boundary drawn around only the primary model is incomplete. That is not a statement about any one component's eligibility. It is a statement that the set of examined components must cover the eligible set for the claim, and that an audit terminating at the primary model has not discharged its examination obligation for the other eligible members. Call it the completeness finding. Nothing in the eligibility successor, which is written per-component, states that the audit must range over all eligible components before a completeness or exit claim is supportable.

**4.3 Exact-claim sufficiency.** The candidate's "primary model" framing is AI-substrate-specific and must not enter substrate-neutral core; the completeness finding generalizes to "the component named in the claim" or "the examined subset." The word "insufficient" needs the standard qualification: insufficient to support what, namely a completeness or exit claim, not insufficient for all purposes.

**4.4 Non-redundancy, the pass's central finding.** The completeness finding is genuinely distinct from eligibility, and the distinction matters. Eligibility answers, per component, is X in the candidate set. Completeness answers, per claim, has every eligible component been resolved to participated, excluded, or unresolved. A boundary can be perfectly correct about each component it examined and still be incomplete because it stopped early, examining the primary model and ignoring an eligible router. Eligibility does not catch that; it was never asked about the router. This is the same shape as the scope-composition finding from the 65.7 pass, the union of examined scopes must cover the claimed scope, now applied to the mediation boundary rather than to verification scopes. That structural echo is evidence it is real: coverage-of-the-set is a recurring finding type distinct from correctness-of-each-element, and it has now appeared on both the verification side and the boundary side. Recommended: the completeness finding enters as one clause of the eligibility successor, not as its own proposition, because it has no content independent of the eligible set the successor defines.

**4.5 Scope classification.** Core, as one clause: a claim of boundary completeness, or an accountability exit depending on it, requires that every eligible mediator for the claim be resolved to participated, excluded, or unresolved, with any unresolved eligible mediator blocking the completeness claim by burden per the successor's dependency rule. Everything else in 65.9 is absorbed or substrate-specific framing.

**4.6 Substrate treatment:** passes; the completeness finding is substrate-neutral once "primary model" is generalized. Cloud: auditing the app tier while an eligible sidecar is unexamined. OT: auditing the PLC while an eligible safety relay is unexamined. Institutional: auditing the signatory while an eligible countersigning authority is unexamined.

**4.7 Operational findings:** the completeness finding, established / excluded / unresolved, maps onto record 66.3's chain-completeness-for-the-claim field already proposed in the 65.4 pass. No new record needed; 65.9's content lands entirely in that one field plus the successor clause.

**4.8 Evidence and dark-surface treatment:** consistent and tight: an eligible-but-unexamined component is manufactured dark surface in the boundary, and under Section 92 the decision to stop the audit at the primary component is itself a claim-selection-authority act that must be owned. Premature boundary termination is a narrowing attack by another name.

**4.9 Adversarial pressure.** (1) Early termination, audit the primary model, declare done: blocked by the completeness clause. (2) Eligible-set gaming via resolution choice, pick a resolution at which the inconvenient component is not claim-relevant: this is Section 92 territory, owned by the frame authority, and the same defense as every resolution-selection attack in the cluster. (3) Completeness inflation, demand examination of ineligible components to make completeness unreachable: blocked because completeness ranges over the eligible set, which grounded eligibility already bounds; the two clauses check each other, eligibility bounds what completeness must cover, completeness prevents eligibility from being examined selectively. That mutual bound is the argument that the two belong in one proposition.

**4.10 Interaction consistency:** consistent with the eligibility successor (as its completeness clause), Section 92 (termination as an owned act), record 66.3, the 65.7 scope-composition finding (same coverage-of-set shape), and the Runtime claim binding successor (whose per-traversal participation finding is a component-level instance of what completeness aggregates).

**4.11 Scope-authority ownership:** no scope expansion beyond the already-ratified boundary; no author ruling required beyond disposition.

**4.12 Open questions affected.** Cluster 6 question 12, per-claim versus universal boundary, is now fully answered across 65.4 and 65.9: eligibility is per-claim, completeness is per-claim, there is no universal boundary. Question 8's dynamically loaded components are covered: a late-loaded eligible component that was not examined leaves the boundary incomplete exactly as a missed static one would.

## Candidate closure record (proposed)

```text
candidate closure record:
  candidate identifier: 65.9 Audit-boundary completeness
  exact source state: r10, SHA-256 b0bb2c6023a6547fafa6143e29ddb88e5e80b19c55674f65a937588cdb0d3945
  canonical gap addressed: no rule requires an audit to range over the whole eligible mediation set before supporting a completeness or exit claim
  failure if absent: an audit correct about each examined component but terminated early could support a completeness or exit claim it has not earned; eligibility alone does not catch premature termination
  non-redundancy finding: sentence 2 absorbed into eligibility (and improved by the successor's grounded-capacity wording); sentence 1's per-component claim absorbed; the completeness-of-set finding is the sole surviving non-derivable element
  scope classification: Superseded as standalone; completeness finding enters as one clause of the Mediation-boundary eligibility and participation successor; remainder absorbed or substrate-specific framing
  recommended successor clause: a boundary-completeness claim, or an exit depending on it, requires every eligible mediator for the claim to be resolved to participated, excluded, or unresolved; an unresolved eligible mediator blocks the completeness claim by burden
  structural note: same coverage-of-set shape as the 65.7 scope-composition finding; eligibility and completeness mutually bound (eligibility bounds coverage, completeness prevents selective examination)
  reviewer disposition: Superseded; one surviving clause into the eligibility successor; no standalone proposition
  Larry disposition: pending
  final state: pending author disposition
```

## Rater note

The completeness-versus-eligibility distinction and the observation that it recurs as the 65.7 scope-composition shape both originate with this evaluator across two passes, which is a mild correlation flag: a recurring structural motif I find satisfying may be a real invariant or may be a pattern I am imposing. The decorrelated test: whether coverage-of-set is genuinely one finding type appearing in two places, arguing for a single shared rule referenced by both the verification-scope successor and the eligibility successor, or two coincidentally similar findings that should stay separate. If the former, there may be a small general "coverage findings" element neither cluster currently owns, and that is worth an uncorrelated look before either successor is drafted, because it would change where the clause lives.
