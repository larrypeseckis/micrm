# MICRM v0 to v0.2 Full Draft Change Log

*Status: Non-canonical full-draft review artifact*  
*Base: MICRM-v0, file dated 2026-07-11; witnessed repository timestamp 2026-07-12*  
*Prior reviewer-ratified state: SHA-256 `a493d4793431cd31b0772a05a60e2856f1af055e464f43ab216eb4ab67dc988b`*  
*Full-draft target: MICRM-v0.2-full-draft, dated 2026-07-16*

This change log identifies the intended architectural differences between the canonical v0 skeleton and the non-canonical v0.2 full draft. It also records the substantive uncertainty-resolution changes made after the reviewer-ratified `a493d479` state. It does not make v0.2 canonical.

---

## Added

### Second invariant

Added joint whole-consequence accountability:

- candidate roots are identified from ancestor paths to a selected consequence;
- each candidate root is bound to the whole consequence by default;
- exit is path-specific;
- a root exits only when every path contains a qualifying propagation cut or structural exclusion;
- unresolved evidence blocks exit without proving contribution;
- apportionment remains an overlay function.

### Normative vocabulary

Added definitions for:

- selected consequence;
- candidate root;
- bound root;
- ancestor path;
- cross-root seam;
- attachment;
- propagation;
- qualifying propagation cut;
- structural exclusion;
- transport-only root;
- alleged contribution class;
- distributed contribution mechanism;
- incident-complete type record;
- and type-compatible capacity.

### Investigative statuses

Added:

- confirmed bound;
- presumptively bound;
- structurally excluded.

Clarified that these are evidentiary metadata. Confirmed-bound and presumptively-bound roots are both bound to the whole consequence.

### Cross-root topologies

Added explicit treatment of:

- convergent cross-root paths;
- sequential cross-root paths;
- the seam-to-Gate evidentiary interval;
- the Gate as the finalization point of a propagation cut.

### Attachment and propagation

Separated two questions:

1. whether an intermediary root attaches to the selected consequence;
2. whether upstream accountability continues through the intermediary.

Added the four-row attachment and propagation table.

### Qualifying propagation cut

Added numbered conditions covering:

- witnessed seam identity;
- declared handoff semantics;
- consequence-relevant protective scope;
- downstream authority continuity;
- non-vacuous structural control capacity;
- actual Gate evaluation and outcome;
- causal supersession or neutralization;
- representation reach;
- dark-surface capacity exclusion;
- and control-independent evidence.

### Structural exclusion

Added positive structural exits for:

- absent paths;
- rejected handoffs;
- replacement before use;
- typed-capacity mismatch;
- positive neutralization;
- and transport-only traversal.

### Transport-only exclusion

Added strict conditions that permit a relay root to exit a selected downstream consequence without erasing:

- its own traversal;
- accountability for its own delivery consequence;
- or upstream accountability propagation.

### Evidentiary machinery

Added:

- control-independence criteria;
- incident-relevant handoff state;
- contribution-capacity profile;
- three-tier consequence-relevant transformation test;
- directional transformation findings;
- transformation-finding versus accountability-effect table;
- representation-reach condition;
- dark-surface capacity-exclusion test;
- counterfactual control-visibility rule;
- state-complete replay;
- state-bounded policy-complete evaluation;
- matched stochastic evaluation separated from event-specific exit;
- and event-level versus distribution-level counterfactual findings.

### Run-level seam record

Added a cross-root seam schema containing:

- upstream and downstream traversal identities;
- handoff-state fields;
- admission and Context formation;
- downstream authority continuity, including repeatable Gate record-channel blocks;
- evidence, including repeatable non-Gate record-channel blocks;
- each channel block contains channel identity, an evidence-record link, evidence source, event-class definition, incident-event or selected-action class-membership result, emission policy, per-event outcome evidence, operation and retention evidence, silence interpretation, record-channel residual dark-surface bound, record-silence exclusion result, independent corroboration, and channel-specific custody and modification control;
- bilateral or independent witnesses;
- evidence custody;
- residual dark-surface bounds;
- capacity-exclusion result;
- alleged-contribution type and distributed-component fields;
- structural-composition locus, operator, co-component references, and finding;
- admission accountability-equivalence, resolution-fork, and promoted-traversal fields;
- and repeatable links to standalone counterfactual-evaluation records.

### Deferred register

The full draft retains explicit deferrals for:

- Gate modification re-entry;
- consequence-resolution rules;
- population-level control coverage;
- and previously excluded keep-in-pocket architecture.

The prior deferrals for contribution typing, distributed-mechanism composition, cross-substrate causal-capacity examples, admission-traversal resolution, nondeterministic counterfactuals, and overlay incentive effects are resolved in the full draft.

### Provenance appendix

Added a ledger separating:

- Larry Peseckis original architecture;
- prior dialogue contributions ratified by Larry;
- joint-accountability dialogue contributions;
- and superseded formulations.

The joint-accountability section uses dialogue-level attribution rather than unsupported item-by-item attribution. Whole-consequence binding by default is recorded as a dialogue proposal ratified by Larry, not as part of the original v0 architecture.

### Full-text review repairs (2026-07-15)

Six findings from the integrated full-text review were repaired:

1. Qualifying-cut neutralization temporally bounded to final Gate outcome; later neutralization routes to structural exclusion (Sections 4.7 and 9.3 condition 7).
2. Transport-only exclusion corrected from a root-wide requirement to a path-level finding, restoring mixed-path exits (Sections 4.9, 9.2, and 9.5).
3. Convergent-topology wording corrected so it no longer narrows the invariant's exit set for upstream roots (Section 8.1).
4. Control definition widened to cover permissive operations so Gate is a true subtype (Section 5.1).
5. Unqualified "inadequate" bounded to structural control capacity, preserving the core and overlay boundary (Sections 4.5, 9.2, and 15.1).
6. Duplicated persistence fields in the contribution-capacity profile split into state continuity and retention interval (Section 10.3).

### Added after review: record-channel emission policy and interpretable silence

Section 6.1 separates record-channel emission policy from residual dark surface as independent dimensions, and defines intervention-selective and evaluation-outcome-complete emission classes. Positive records establish only the event and outcome they record; a recorded intervention may support attachment, a qualifying cut, or structural exclusion depending on its consequence-relevant effect. Silence from an intervention-selective channel cannot establish evaluation and permission. Where exit depends on a permitted or unchanged Gate outcome, positive per-event outcome evidence is required; absence from an established evaluation-outcome-complete channel supports non-evaluation and blocks the cut. A silence-based non-evaluation inference additionally requires that the selected incident event's membership in the channel's event class be independently established; unresolved membership leaves evaluation unresolved and the exit fails by burden. A non-evaluation finding further requires that the record channel's own residual dark-surface bound exclude omission, loss, suppression, corruption, or failure to link the selected event's outcome record; an unresolved missing-record pathway leaves evaluation unresolved. Positive permit records from intervention-selective channels are evaluated on their own event identity, custody, independence, and linkage; selective emission limits interpretation of silence, not the content of a positive record. Cut condition 6 was rewritten accordingly. Repeatable per-channel record blocks, carrying event-class definition, class-membership result, emission policy, per-event outcome, operation and retention evidence, silence interpretation, record-channel residual dark-surface bound, record-silence exclusion result, independent corroboration, and custody and modification control, were added to the per-layer evidence record and the cross-root seam record; channels with different emission policies may not be collapsed. An unavailable or unresolvable record field blocks exit only where required to establish an applicable exit condition. Population-level control coverage remains deferred.

### Full-draft uncertainty resolutions (2026-07-16)

Resolved all six explicit uncertainty markers present in review state `a493d479`:

1. **Contribution typing:** replaced the proposed complete type-system claim with an incident-complete alleged-contribution record. Fields can be concrete, independently supported as not applicable, or unresolved. Type compatibility is evaluated under actual receiving-interface semantics. Unilateral type selection by an interested root cannot establish exit, and competing evidence-compatible classes leave class selection unresolved.
2. **Admission traversal resolution:** added an accountability-sensitive comparison between embedded and promoted representations. A simpler representation is permitted only when the two are independently established as accountability-equivalent. Established inequivalence plus a separately committed result requires promotion. Unresolved equivalence produces an admission-resolution fork. The first invariant and candidate sets are evaluated separately under each evidence-compatible representation, and an exit must hold in every representation in which the root is a candidate.
3. **Distributed mechanisms and channel composition:** defined distributed contribution mechanisms as finite indexed collections and added a mechanism-specific structural composition test covering path continuity, association, time, interface semantics, type composition, and consequence reach. Multiplicity and order are preserved.
4. **Operative causal capacity:** defined the term as an incident-specific, directed, uncut, type-compatible capacity relative to an identified mechanism. Explicitly rejected generalized but-for attachment and added examples across all five substrate families.
5. **Nondeterministic counterfactuals:** added state-complete replay, state-bounded policy-complete evaluation, and matched stochastic evaluation. Event-level difference and equivalence are separated from distribution-level findings; stochastic distribution results cannot by themselves establish an event-specific core exit.
6. **Overlay incentives:** added a descriptive overlay incentive audit for upstream retention, evidence suppression, control avoidance, and scope minimization without prescribing liability shares.

Record support was added for the new rules, including alleged-contribution and composition fields, admission accountability-equivalence records, admission-resolution forks, promoted-traversal identifiers where established, and standalone counterfactual-evaluation records linked from the seam evidence block. Two new worked outcomes cover distributed command-plus-authority composition and borderline admission promotion.

---

## Modified

### Authority / Accountability frame

Retained the first invariant and made it prior to joint-accountability evaluation.

Added the second invariant and the single evidentiary standard for exit.

### Traversal stack layer 4

Changed:

```text
Gate / Control
```

to:

```text
Gate
```

Defined Control as the functional supertype and Gate as the positional final control stage after Action Selection and before Actuation.

### Gate wording

Changed the Gate's position from the broad phrase "before consequence" to the exact position "after Action Selection and before Actuation."

### Evidence spine

Retained the strength gradient and added custody, modification control, and independent structural support as exit requirements.

### Residual dark surface

Retained the no-total-observability rule and added a typed capacity-exclusion test. Unresolved capacity now blocks exit without proving contribution.

### Run graph

Extended the graph from sequential chaining and drift analysis to:

- cross-root seams;
- convergent consequences;
- path-specific attachment and propagation;
- run-level seam records.

### Accountability record

Extended the record from per-traversal evidence plus graph to include witnessed cross-root seam records.

### Example placements

Made placement position-dependent:

- pre-actuation safety interlock: Gate;
- governor or limiter acting during motion: Actuation-layer control;
- admission infrastructure: Context-boundary control or separate traversal;
- component names do not determine layer placement.

---

## Reclassified

### Admission infrastructure

Reclassified as either:

- Context-boundary and seam evidence; or
- its own traversal when it independently changes state, authority, routing, or availability.

For borderline cases, the full draft compares embedded and promoted representations. The embedded form is permitted only when accountability equivalence is independently established across roots, candidate paths, attachment, propagation, exits, evidence custody, dark surfaces, and consequence identity.

### Mechanical and runtime controls

Reclassified as Actuation-layer controls when they act during Actuation, even where product terminology calls them gates or interlocks.

### Conduits

Reclassified from automatically bound carriers to graph-visible roots that may be excluded from a selected downstream consequence only through strict structural transport-only evidence.

### Transformation findings

Separated:

- non-relevant transformation established;
- consequence-relevant transformation established;
- transformation relevance unresolved.

Unresolved no longer becomes a factual materiality finding.

### Dark surfaces

Reclassified from possible exculpatory closure to a blocking condition. A dark surface can prevent exit. Disclosure alone cannot grant it.

---

## Superseded

The v0.2 draft rejects or supersedes these working formulations:

- proving Gate defeat from the upstream root's intent or self-narrated Action Selection;
- using B's Gate record as the sole evidence of a seam;
- severance based only on operating within declared specification;
- declared semantics as the transformation-materiality test;
- binding every carrier because it carried a mechanism;
- claiming dark-surface closure despite residual opacity;
- digest equality as proof that no transformation occurred;
- invertibility and content-blindness as a non-relevance safe harbor;
- form change as an independent materiality prong;
- converting missing evidence into proof of material transformation;
- "known channel" as the dark-surface threshold;
- behavioral reliance as the representation discriminator;
- record silence as a two-cause system of dark surface versus non-emission;
- the categorical claim that intervention-selective records can support binding but not exit.

---

## Deferred

The following remain outside v0.2:

- consequence-relevant Gate modification re-entry into Action Selection;
- consequence-node resolution;
- population-level control coverage, including denominator definition, false-negative estimation, and required assurance levels;
- tiering, irreversibility, two-ledger residual, mount-point regime, or bonded-root economics.

Contribution typing, distributed-mechanism composition, five-substrate causal-capacity examples, admission-traversal resolution, nondeterministic counterfactual evidence modes, and overlay incentive auditing are no longer deferred. Their full-draft language requires renewed integrated review and Larry's full-text ratification.

---

## Review Checklist Before Canonicalization

- [ ] Full-text ratification by Larry Peseckis.
- [ ] Confirm second-invariant wording.
- [ ] Confirm candidate-set and per-path wording.
- [ ] Confirm attachment and propagation table.
- [ ] Confirm qualifying-cut conditions.
- [ ] Confirm structural-exclusion conditions.
- [ ] Confirm transport-only conditions.
- [ ] Confirm Gate and Control definitions.
- [ ] Confirm admission-traversal promotion wording.
- [ ] Confirm dark-surface capacity test.
- [ ] Confirm transformation tiers and directional findings.
- [ ] Confirm representation-reach condition.
- [ ] Confirm event-level and distribution-level counterfactual rules.
- [ ] Confirm seam-record fields, including contribution composition, admission resolution, and counterfactual records.
- [ ] Confirm record-channel emission-policy and per-event outcome rules.
- [ ] Confirm example placements.
- [ ] Confirm both [ASSUME: ...] clauses and confirm that no active uncertainty marker remains.
- [ ] Confirm provenance ledger.
- [ ] Confirm superseded-formulation list.
- [ ] Confirm no overlay-specific apportionment entered the core and confirm the overlay incentive audit remains descriptive.
- [ ] Commit only after integrated review.

---

*This full-draft change log is a review aid. MICRM-v0 remains canonical until v0.2 is reviewed, ratified, and committed.*
