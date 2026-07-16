# MICRM-v0.2-full-draft: Machine-Initiated Consequence Reference Model

*Author: Larry Peseckis | larrypeseckis.ai*  
*Version: v0.2 full review draft | Dated: 2026-07-16*  
*Status: Non-canonical full draft. Not for distribution.*  
*Canonical predecessor: MICRM-v0, file dated 2026-07-11; witnessed repository timestamp 2026-07-12.*

> **Draft-control notice:** MICRM-v0 remains the canonical model. This document has no canonical effect unless Larry Peseckis ratifies the integrated text and commits the ratified version to the MICRM repository. This full draft is derived from reviewer-ratified review state SHA-256 `a493d4793431cd31b0772a05a60e2856f1af055e464f43ab216eb4ab67dc988b` and resolves every explicit uncertainty marker present in that state. The resolutions are substantive changes, so the prior reviewer ratification does not extend to these bytes. The two remaining scope-assumption clauses are declared assumptions, not unresolved architecture. Wording remains subject to renewed full-document review.

---

## 1. Core Definition

MICRM is a substrate-neutral reference model for describing, governing, evidencing, and assigning accountability for machine-initiated consequence.

The governed object is not "AI." The governed object is machine-initiated consequence. AI is one substrate. Cloud automation is one substrate. OT is one substrate. Physical systems are one substrate. Institutional, legal, and financial decision systems are substrates.

MICRM identifies accountability structure. It does not determine legal fault, culpability, damages, negligence, criminal intent, or fractional liability. Legal, regulatory, contractual, safety, and sector-specific regimes attach as overlays.

---

## 2. Unit of Analysis

The base unit is one machine-initiated action, represented as one traversal of the stack.

A run is a directed chain or graph of traversals.

- One traversal: one machine-initiated consequence event.
- One run: a directed graph of traversals.
- One selected consequence: the discrete consequence event being evaluated under the joint-accountability rule.
- One incident: a subset of traversals whose consequences matter to the investigation.
- One accountability record: the evidence and authority chain attached to each traversal, plus the run-level graph and its cross-root seam records.

The consequence of one traversal may become Context or Intent for another traversal. Multiple traversals may also converge on one selected consequence.

[ASSUME: The run graph is resolved at a level sufficient to distinguish the traversals and consequence events material to the incident. Where resolution is uncertain, the uncertainty is recorded and cannot support an exit from accountability.]

---

## 3. Authority / Accountability Frame

The stack sits inside a single bidirectional frame, not a top layer plus an outer wrapper.

- Authority flows downward into the traversal. Who permitted this system to act?
- Accountability flows upward from the consequence. Who bears the consequence if that permission was wrong?

### 3.1 First invariant: bonded-root termination

**A machine-initiated action is accountable only if its downward authority path and its upward accountability path terminate at the same bonded root. If they do not, the action is orphaned: valid permission, no bound owner. Orphaned actions are unaccountable by construction, regardless of how clean the evidence is.**

The first invariant applies independently to every traversal before the joint-accountability rule is applied to a selected consequence.

### 3.2 Second invariant: joint whole-consequence accountability

**For a selected consequence, every bonded root with an ancestor traversal path to that consequence is bound to the whole consequence by default. A root exits only when independently supported structural evidence establishes, on every path from that root to the selected consequence, either a qualifying propagation cut or structural exclusion. An unresolved path does not establish contribution as a factual matter, but it prevents exit. Apportionment belongs to overlays.**

At one candidate root, the second invariant reduces to the single-root case after the first invariant has been satisfied. It does not repair an orphaned traversal.

MICRM's whole-consequence default is a structural accountability rule. It is not an adoption of any jurisdiction's joint-and-several liability doctrine.

### 3.3 One evidentiary standard for exit

An exit from joint accountability is established only by independently supported structural evidence. Behavioral narration, self-report, claimed intent, and unilateral records cannot by themselves establish exit.

Structural evidence concerns system boundaries, interfaces, states, paths, controls, authority, transformations, and typed capacities in the actual run. It must be captured or corroborated outside the exculpating root's unilateral control to the degree required by the claim.

### 3.4 Investigative statuses

The following are evidentiary metadata, not different degrees or shares of accountability:

- **Confirmed bound:** positive structural evidence identifies an attachment to the selected consequence, such as origination or increase of a contribution-bearing capacity, consequence-relevant selection or authority representation, or failure of a consequence-relevant control attributable to the root.
- **Presumptively bound:** the root is in the candidate set and has not established an exit on every path.
- **Structurally excluded:** independently supported structural evidence establishes a qualifying cut or exclusion on every path from the root to the selected consequence.

Confirmed-bound and presumptively-bound roots are both bound to the whole consequence. "Presumptively" does not mean partially accountable.

---

## 4. Normative Vocabulary

### 4.1 Candidate root

A bonded root whose traversal has an ancestor path to the selected consequence after the first invariant has been applied to the traversals on that path.

### 4.2 Bound root

A candidate root that has not established exit on every path to the selected consequence.

### 4.3 Ancestor path

A directed path in the run graph from a traversal under a bonded root to the selected consequence. A path may cross one or more bonded-root seams.

### 4.4 Cross-root seam

A run-graph edge across which a consequence, state, artifact, authority representation, or other handoff produced under one bonded root enters a traversal under another bonded root.

A seam is a run-level edge. It is not a seventh traversal layer.

### 4.5 Attachment

Whether an intermediary root becomes bound to the selected downstream consequence because its own traversal originated, introduced, increased, selected, authorized, or represented a consequence-relevant capacity, or because a consequence-relevant control attributable to that root failed, lacked the required consequence-relevant structural control capacity, or was displaced.

### 4.6 Propagation

Whether accountability attached to an upstream root continues across a cross-root seam toward the selected consequence.

Attachment and propagation are separate determinations.

### 4.7 Qualifying propagation cut

A path-specific cross-root transfer, finalized at the downstream Gate, for which independently supported structural evidence establishes that downstream authority remained consequence-relevant and operative from seam admission through final Gate outcome, and that any upstream-originated capacity capable of carrying the alleged contribution class was absent, structurally superseded, or positively neutralized no later than final Gate outcome.

### 4.8 Structural exclusion

A path-specific finding, established by independently supported structural evidence, that the root lacked the required type, authority, reach, or causal capacity to contribute on that path, or that any such capacity was rejected, replaced, neutralized, or otherwise removed before the selected consequence.

### 4.9 Transport-only root

A root is transport-only on a selected path when its traversal carried a handoff state on that path but did not originate, transform, select, authorize, represent, control, or otherwise alter any consequence-relevant capacity or transition property for the selected downstream consequence.

A transport-only finding is a path-level finding for the selected downstream consequence. It does not erase the root's traversal or accountability for that traversal's own consequence, and it does not by itself determine the root's status on any other path.

### 4.10 Alleged contribution class

The alleged contribution class is the incident-relative type against which channel, state, transition, and path capacities are evaluated.

```text
alleged contribution class:
  identifier:
  class-selection authority or record:
  operation or effect:
  carrier or representation:
  receiving interface:
  target:
  required authority:
  required provenance:
  quantitative bound:
  temporal relation:
  multiplicity and persistence:
  required combination conditions:
  composition locus or ordered subgraph:
  composition rule or operator:
  selected consequence class:
```

Each field is recorded as one of:

- a concrete value, set, relation, or range;
- not applicable (`⊥`), with independently supported structural evidence where non-applicability bears on exit;
- or unresolved (`?`).

The type record is **incident-complete** when every field required to distinguish capacity present from capacity excluded for the claimed exit is resolved or independently supported as not applicable. Incident completeness is not a claim that MICRM provides a universal ontology of every possible machine effect.

A channel, state, transition, or path has **type-compatible capacity** when independently supported structural evidence establishes that it can satisfy every required dimension under the actual receiving-interface semantics and incident state. Categorical dimensions are evaluated by membership or inclusion; authority and provenance by satisfaction of the required predicate; quantitative dimensions by the recorded threshold or range; temporal, multiplicity, and persistence dimensions by the recorded relation; and combination conditions under the structural channel-composition test in Section 7.2.

The alleged contribution class and its field resolutions are part of the accountability record. An interested root's unilateral type declaration cannot by itself establish exit. If two evidence-compatible class definitions would produce different attachment, propagation, cut, exclusion, or dark-surface results, class selection is unresolved and cannot support exit.

If a required field or compatibility relation is unresolved, type compatibility is unresolved and cannot support exit.

### 4.11 Distributed contribution mechanism

A distributed contribution mechanism is a finite indexed collection of two or more contribution-bearing states or capacities that are individually insufficient to satisfy the alleged contribution class but become type-compatible through an identified composition locus or ordered composition subgraph on ancestor paths to the selected consequence. Indexed collection is used rather than mathematical set so that repeated states, duplicate messages, quorum members, and multiplicity remain representable.

A composition locus may be a traversal layer, control, software or physical interface, policy rule, institutional decision function, or physical coupling. Mere co-presence, common ancestry, or theoretical combinability is insufficient. Each component remains attributed to the root or roots whose traversals originated, transformed, selected, authorized, represented, or controlled it. Structural composition is evaluated under Section 7.2, and faithful carriage alone does not attach a transport-only root.

---

## 5. Traversal Stack

1. **Intent / Objective:** what goal or instruction initiated the traversal?
2. **Context / State:** what state, data, memory, sensor input, authority representation, or prior consequence shaped the decision?
3. **Action Selection:** what did the system choose or generate?
4. **Gate:** what final control stage checked, constrained, rejected, delayed, escalated, authorized, or modified the selected action before Actuation?
5. **Actuation:** what actually touched the world?
6. **Consequence:** what changed?

### 5.1 Control and Gate

**Control** is the functional supertype. A control is any mechanism that evaluates or changes whether, how, when, where, or under whose authority a traversal state or transition proceeds. Controls may check, constrain, admit, authorize, reject, transform, delay, escalate, authenticate, release, or otherwise govern the state or transition.

**Gate** is positional. It is the final control stage acting on the selected action after Action Selection and before Actuation.

All Gates are controls. Not all controls are Gates.

A traversal has one logical Gate stage. That stage may contain:

- no effective control;
- one control;
- multiple ordered controls;
- a control fused into the same physical component as Action Selection;
- or an unobserved, bypassed, or failed control.

A component may implement more than one logical layer. Compound placement does not eliminate the need to distinguish the evidence for each logical function.

### 5.2 Controls outside the Gate

Controls may operate at Intent, Context formation, Action Selection, Actuation, Consequence measurement, or a run-graph seam without becoming the Gate.

Examples:

- input authentication at Context admission is a Context-boundary control;
- a mechanical governor acting during motion is an Actuation-layer control;
- a consequence monitor is a Consequence-layer control or evidence mechanism;
- a final tool-authorization service acting on a selected call before execution is a Gate control.

An Actuation-layer control cannot finalize a Gate-based propagation cut. It can support structural exclusion if it positively neutralizes the relevant contribution before the selected consequence.

### 5.3 Admission as its own traversal

An admission control is recorded at the seam and Context boundary when it only contributes evidence to downstream Context formation.

Promote an admission decision to its own traversal when the machine-initiated decision independently changes state, authority, routing, or availability in a manner relevant to incident reconstruction. An accept, reject, quarantine, release, route, or transform decision may therefore have its own Intent, Context, Action Selection, Gate, Actuation, Consequence, evidence spine, and bonded root.

#### Accountability-sensitive graph-resolution rule

For a borderline admission mechanism, evaluate both local representations:

1. the mechanism embedded as a Context-boundary control; and
2. the mechanism promoted to a separate traversal.

The two representations are **accountability-equivalent** only when independently supported structural evidence establishes that the choice does not change any of the following at the selected incident resolution:

- bonded-root assignment;
- candidate-root membership;
- ancestor-path count or topology;
- attachment or propagation findings;
- availability of a qualifying propagation cut or structural exclusion;
- evidence custody, independence, or residual-dark-surface bounds;
- or the identity of the selected consequence.

If accountability equivalence is established, the simpler embedded representation is permitted. If inequivalence is established and independently supported evidence establishes a separately committed admission result, the mechanism is promoted to its own traversal.

If accountability equivalence or the separately committed result cannot be established or excluded, the record retains both evidence-compatible representations as an **admission-resolution fork**. The first invariant, candidate sets, and exits are evaluated separately under each evidence-compatible representation. A root exits only if it establishes exit in every evidence-compatible representation in which it is a candidate. The fork does not prove that a separate traversal occurred, and uncertainty about the representation cannot support exit.

The resolution decision or fork, compared representations, and supporting evidence are recorded in the run graph or seam record. Promotion preserves an accountable decision boundary. It does not by itself establish attachment or contribution.

### 5.4 Fused selection and authorization

A control fused with Action Selection does not establish an independent Gate merely because the system describes, critiques, or checks its own selected action.

Gate-finalized severance requires independently evidenced post-selection control, or another structural basis for distinguishing selection from authorization.

Where the record cannot distinguish selection from authorization, an independent Gate is not established for severance purposes. Structural exclusion at the seam or positive neutralization remains available.

---

## 6. Evidence Spine

Evidence is emitted across every transition, but evidence strength varies by layer.

- Harder evidence: Actuation, Consequence, infrastructure state, and externally observable transitions. Examples include an API call, file change, payment, door movement, machine state, physical motion, or completed transaction.
- Softer evidence: Intent, reasoning, Context interpretation, claimed objective, and self-described selection rationale.
- Danger zone: any exit determination that depends on the agent or interested root explaining itself.

The gradient runs backwards from where accountability needs it most. The record is weakest near Intent, Context interpretation, and Action Selection, and strongest near externally observable Actuation and Consequence. Independent-capture effort should be concentrated where the evidence is structurally weak.

Per-layer evidence record:

```text
Layer:
  observed surface:
  record channels, repeatable per channel:
    channel identifier:
    evidence source:
    event-class definition:
    incident-event class-membership result:
    emission policy:
    per-event outcome identifier or evidence:
    channel operation and retention evidence:
    silence interpretation:
    record-channel residual dark-surface bound:
    record-silence exclusion result:
    independent corroboration:
    custody and modification control:
  residual blind spot:
  confidence:
```

Channel fields repeat once per channel. Channels with different emission policies may not be collapsed into one aggregate record; each channel's silence is interpreted under its own policy.

Not every layer requires a machine log. A substrate-appropriate record may state that record-channel fields are not applicable, unavailable, or structurally unresolvable. A field that is unavailable or structurally unresolvable blocks a claimed exit only where that field is required to establish an applicable exit condition. A claim that a field is not applicable must itself be independently supported where non-applicability bears on exit.

### 6.1 Record-channel emission policy and interpretable silence

Record silence can arise from multiple conditions, including selective emission policy, non-occurrence, capture failure, retention failure, suppression, channel outage, or unresolved event-class membership. MICRM distinguishes a record channel's emission policy from its residual dark surface.

**Emission policy** identifies which evaluated events and outcomes a functioning channel is intended to record. **Residual dark surface** bounds uncertainty concerning relevant occurrences, states, evaluations, records, retention, integrity, or observability relative to that policy. The two dimensions are independent and may coexist in the same channel. Section 7 governs dark surfaces.

For v0.2, two relevant emission classes are:

- **Intervention-selective record:** emits for specified intervention outcomes, such as rejection, modification, delay, escalation, or quarantine, but does not necessarily emit for permit or no-change outcomes. Its silence does not distinguish evaluation without intervention from non-evaluation.
- **Evaluation-outcome-complete record:** emits a per-event outcome for every evaluation in the relevant event class, including permit or no-change outcomes.

A channel is treated as evaluation-outcome-complete only where independently supported structural evidence establishes the relevant event-class definition, channel operation, emission behavior, retention, and custody over the incident interval.

A channel's event-class definition and the selected incident event's membership in that class are separate findings. A silence-based inference requires independently supported evidence that the selected event belonged to the class for which the channel was evaluation-outcome-complete.

Positive records establish only the event and outcome they record. An intervention-selective record may support attachment, a qualifying propagation cut, or structural exclusion depending on the recorded intervention's consequence-relevant effect. A recorded rejection may establish that a handoff did not enter Context. A recorded Gate-stage modification that neutralizes an upstream capacity may support a qualifying propagation cut. A recorded harmful transformation or failed intervention may support attachment.

Silence from an intervention-selective channel cannot establish that a handoff or selected action was evaluated and permitted without intervention. It does not distinguish "evaluated and permitted" from "not evaluated." A positive permit or no-change record is evaluated according to its own event identity, custody, independence, and linkage; the channel's selective emission policy limits interpretation of silence, not the evidentiary content of a positive record.

Where an exit depends on a control having evaluated and permitted a specific non-intervened event, positive per-event outcome evidence is required. Silence from an intervention-selective channel is insufficient. Absence from an evaluation-outcome-complete channel may support a finding that no evaluation occurred only when independently supported structural evidence establishes the relevant event-class definition, the selected incident event's membership in that class, channel operation, emission behavior, retention, and custody over the relevant interval, and additionally establishes that the record channel's own residual dark-surface bound excludes omission, loss, suppression, corruption, or failure to link the selected event's outcome record over that interval. If event-class membership is unresolved, or the record channel's dark surface leaves a missing-record pathway unresolved, evaluation remains unresolved and the exit fails by burden. A non-evaluation finding blocks the exit. It does not establish one. This does not claim total observability of the channel; it requires only that the specific missing-record pathway needed for the inference be excluded at the incident's chosen resolution.

| Gate evidence condition | Evidence effect |
|---|---|
| Permit without change, positive per-event outcome | Exit-relevant; supports condition 6 |
| Reject, positive record | May support structural exclusion |
| Modify and permit, positive records | May support a cut |
| Delay or escalate, positive record | Establishes that intervention |
| No record, intervention-selective channel | Evaluation and permission unresolved |
| No record, complete channel, membership established, record-silence exclusion established | Supports non-evaluation; cut fails |
| No record, membership established, record-channel dark surface unresolved | Evaluation unresolved; cut fails by burden |
| No record, incident-event membership unresolved | Evaluation unresolved; cut fails by burden |

Population-level coverage, meaning whether a control evaluated every qualifying case across a run, deployment, or population, is an assurance and overlay question and is listed in the Deferred Register.

---

## 7. Residual Dark Surface

Every layer, seam, and evidence channel has a capturable surface and a residual dark surface. MICRM does not assume total observability. Blind spots must be bounded, disclosed, and reduced where possible.

A dark surface cannot grant exit merely because it has been disclosed. It can block exit when its relevant capacity is present or unresolved.

### 7.1 Dark-surface capacity-exclusion test

A residual dark surface permits exit only when independently supported structural evidence bounds that surface such that no channel, or structurally composable set of channels, admitted by the bound has the combined type, authority, reach, and causal capacity required to carry the alleged contribution class.

If the bound, the composability of admitted channels, or any required capacity dimension is unresolved, capacity exclusion is not established and the exit fails.

The test has three findings:

| Finding | Exact factual claim | Exit effect |
|---|---|---|
| Capacity excluded | The bounded surface cannot carry the alleged contribution class | This condition is satisfied |
| Capacity present | A channel or composable set can carry the alleged contribution class | Exit fails |
| Capacity unresolved | Relevant capacity cannot be established or excluded | Exit fails by burden; contribution is not thereby proven |

Individual insufficiency does not establish set insufficiency. Channel-set composition is evaluated under the following rule.

### 7.2 Structural channel-composition test

Let `C = (c1, ..., cn)` be a finite indexed collection of channels or channel-borne states, let `m` be a proposed composition locus or ordered composition subgraph, and let `κ` be the alleged contribution class. The indexing preserves order and multiplicity where either is consequence-relevant.

`C` is **structurally composable for `κ` at `m`** only when independently supported structural evidence establishes all of the following:

1. **Path continuity:** every required channel or state reaches `m` on the incident graph without a qualifying cut, structural exclusion, or neutralization that removes its required capacity before composition.
2. **Association:** the states can be associated to the required subject, target, transaction, session, device, case, or other incident identity.
3. **Temporal compatibility:** ordering, concurrency, expiry, persistence, and multiplicity permit the states to coexist or be consumed in the required sequence.
4. **Composition semantics:** the actual interface, control, policy, physical coupling, or decision function at `m` accepts and combines the states in the alleged manner.
5. **Type composition:** the mechanism-specific partial operator `⊕m` applied to the input capacity profiles yields a capacity type-compatible with `κ` under Section 4.10.
6. **Consequence reach:** `m` lies on an ancestor path to the selected consequence.

MICRM does not define a universal composition operator. `⊕m` is partial and mechanism-specific. It may combine, for example, data with authority, a command with an enable state, two control signals, an instruction with tool access, or a factual representation with an institutional decision rule.

The test has three findings:

| Finding | Exact factual claim | Exit effect |
|---|---|---|
| Composition present | The identified states have an enabled composition relation through `m` that yields the alleged contribution class | Capacity is present for that proposed composition; the applicable attachment, propagation, cut, and exclusion rules continue |
| Composition excluded | At least one required path, association, temporal, semantic, type, or consequence-reach condition is structurally impossible | That proposed composition does not block exit |
| Composition unresolved | A required condition or the relevant composition semantics cannot be established or excluded | Capacity exclusion is not established; exit fails by burden |

For a residual dark surface, every finite indexed collection admitted by the bound must be evaluated. A collection blocks exit when composition is present or unresolved. Capacity exclusion is established only when every admitted collection is excluded. The rule does not require total observability; it requires resolution only of the specific composition pathways relevant to the alleged contribution class.

---

## 8. Run Graph and Cross-Root Topologies

Multi-step systems are represented as directed graphs of traversals. Drift, permission creep, control erosion, and joint consequence are graph-level phenomena.

Worked control-erosion chain:

- Traversal 1: permitted read.
- Traversal 2: inferred credential location.
- Traversal 3: attempted use.
- Traversal 4: substituted authority.
- Traversal 5: destructive act.

Each traversal may appear locally defensible. The run graph shows migration across traversals.

### 8.1 Convergent cross-root topology

Two or more traversals under distinct bonded roots converge directly on one selected consequence. For a directly converging path with no downstream cross-root Gate seam, structural exclusion is the available exit at the convergence. An ancestor path that contains a sequential cross-root seam may still be resolved through a qualifying propagation cut at that seam. The root-level result remains governed by the per-path evaluation in Section 9.1.

### 8.2 Sequential cross-root topology

A consequence or handoff produced under root A becomes Context or Intent for a traversal under root B.

The relevant evidentiary span is:

```text
A.Consequence
      |
      v
cross-root seam
      |
      v
B.Context formation
      |
      v
B.Action Selection
      |
      v
B.Gate outcome
      |
      v
B.Actuation
      |
      v
B.Consequence
```

The Gate is the finalization point of a qualifying propagation cut. The seam-to-Gate interval is the evidentiary span required to establish the cut.

---

## 9. Joint-Accountability Path Mechanics

### 9.1 Order of evaluation

For a selected consequence:

1. Apply the first invariant to each traversal.
2. Identify candidate roots with ancestor paths to the selected consequence.
3. Bind every candidate root to the whole consequence by default.
4. Evaluate every path from each candidate root independently.
5. Permit exit only where every path contains a qualifying propagation cut or structural exclusion.
6. Treat any unresolved path as failure to establish exit, not as proof that contribution occurred.
7. Leave apportionment to overlays.

### 9.2 Attachment and propagation

| Intermediary condition | Intermediary root attaches to selected downstream consequence | Upstream accountability propagates |
|---|---:|---:|
| Transport-only established on the path | No | Yes |
| Failed, structurally incapable, or displaced consequence-relevant control | Yes | Yes |
| Qualifying Gate-finalized propagation cut | Yes | No |
| Successful neutralization followed by independently produced downstream harm | No | No |

The intermediary root remains accountable under the first invariant for its own traversal consequence even where it does not attach to the selected downstream consequence.

### 9.3 Qualifying propagation cut

A cross-root Gate finalizes a qualifying propagation cut on one path only when independently supported structural evidence establishes all of the following:

1. **Seam identity:** the incident-relevant handoff state is identified through witnessed upstream and downstream evidence.
2. **Declared handoff semantics:** the authorized role, input envelope, protective scope, decision criteria, and relevant authority or provenance representations were declared before or at admission.
3. **Consequence-relevant scope:** the selected consequence class falls within the Gate's declared protective scope.
4. **Authority continuity:** the downstream root retained its own authorized control from admission and Context formation through Action Selection and final Gate outcome.
5. **Structural control capacity:** the Gate had a real, non-vacuous ability to reject, modify, isolate, delay, escalate, or authorize the selected action with respect to the selected consequence class.
6. **Actual Gate evaluation and outcome:** independently supported per-event evidence establishes all of the following: the Gate evaluated the selected action under its recorded policy and configuration; the final Gate outcome was recorded; and that outcome is linked to the Actuation record. For an action permitted without intervention, the evidence must include a positive per-event permit or no-change outcome from an evaluation-outcome-complete channel under Section 6.1, or equivalent independently witnessed evidence. Silence from an intervention-selective channel cannot establish evaluation or permission. A positive intervention record establishes only the intervention and outcome it records.
7. **Causal supersession or Gate-stage neutralization:** at final Gate outcome, no upstream-originated capacity attributable to the exiting root retained the type, authority, reach, and causal capacity required to carry the alleged contribution class. This may be established because the relevant contribution-bearing capacity originated downstream of the seam, or because every upstream-originated capacity attributable to the root had been structurally superseded or positively neutralized no later than final Gate outcome. Neutralization completed after final Gate outcome is evaluated as structural exclusion under Section 9.4 and cannot complete a qualifying propagation cut.
8. **Representation reach resolved:** consequence-relevant representations created, changed, attached, or validated at the seam satisfy the representation-reach condition in Section 10.5.
9. **Dark-surface capacity excluded:** capacity is excluded under the dark-surface capacity-exclusion test in Section 7.1.
10. **Control-independent support:** the evidence satisfies the independence criteria in Section 10.1.

A declared specification is necessary evidence. It is not sufficient. Procedural conformance does not establish structural adequacy, retained authority, or causal supersession.

Failure to establish any condition prevents the cut. It does not by itself prove attack, defeat, negligence, or contribution.

### 9.4 Structural exclusion

A root is structurally excluded on one path when independently supported structural evidence establishes at least one of the following for the alleged contribution class:

- the path did not exist during the incident interval;
- the handoff was rejected and did not enter consequence-relevant Context;
- the handoff was replaced before consequence-relevant use;
- the root lacked the required type, authority, reach, or causal capacity;
- a contribution-bearing state or mechanism was positively neutralized before the selected consequence;
- the root qualifies as transport-only under Section 9.5;
- or another structural condition excludes the alleged contribution class on that path at the incident's chosen resolution.

Structural exclusion also requires capacity exclusion under the dark-surface capacity-exclusion test and independently supported evidence.

### 9.5 Transport-only exclusion

A root is structurally excluded as transport-only on one selected path only when independently supported structural evidence establishes all of the following for that path:

1. **Distinct consequence:** the selected downstream consequence is distinct from the root's own relay or delivery consequence.
2. **No origination:** the root did not originate the contribution-bearing state, mechanism, defect, instruction, authority representation, or physical property.
3. **No consequence-relevant transformation:** the root did not introduce, activate, amplify, attenuate, neutralize, combine, translate, reinterpret, conceal, or otherwise change the relevant typed capacity under the transformation test in Section 10.4.
4. **No consequence-relevant selection:** the root did not independently select or alter semantic content, target, route, timing, order, multiplicity, suppression, release, or redirection in a manner relevant to the selected consequence.
5. **No authority or trust rebinding:** the root did not create, alter, attach, validate, substitute, strip, elevate, or repackage a consequence-relevant authority, identity, provenance, safety, accuracy, authentication, or trust representation with enabled reach and capacity into a consequence-relevant function.
6. **No consequence-relevant control role:** the root neither exercised nor represented that it exercised an acceptance, validation, authorization, safety, accuracy, or provenance function for the selected consequence class.
7. **Witnessed continuity:** the incident-relevant input state, output state, executed component identity, configuration, and transition attributes are independently or bilaterally witnessed.
8. **Representation reach resolved:** every representation created, changed, attached, or validated by the root satisfies the representation-reach condition in Section 10.5.
9. **Dark-surface capacity excluded:** capacity is excluded under the dark-surface capacity-exclusion test in Section 7.1.
10. **Path integrity:** every traversal under the root on the selected path that carries the handoff satisfies the preceding conditions. One non-neutral or unresolved traversal prevents transport-only exclusion on that path.

A root may establish transport-only exclusion on one path and a qualifying propagation cut or another structural exclusion on a different path. The root exits only when every path is resolved under Section 9.1.

When all conditions hold for a path:

- on that path, the root does not attach to the selected downstream consequence;
- on that path, upstream accountability continues through it;
- the path-level transport-only finding does not sever an upstream root;
- the root remains accountable for its own relay traversal and immediate consequence;
- the root's final status is determined across every path;
- and missing, unilateral, or unresolved evidence leaves the path unresolved without proving positive contribution.

A component that accepts, rejects, quarantines, releases, routes, filters, validates, summarizes, or semantically transforms content is not transport-only merely because its output payload is identical or because it lacked harmful intent.

---

## 10. Evidentiary Machinery

### 10.1 Control-independent evidence

Evidence supporting exit must be outside the exculpating root's relevant:

- authority;
- modification control;
- selective-retention control;
- and evidence-generation control.

A second log controlled by the same root is not independent merely because it is stored separately. A third-party service is not sufficient where the root unilaterally selects the observable surface that the service attests to.

Acceptable support may include bilateral seam capture, independent infrastructure observation, witnessed state comparison, externally controlled timestamps, signed custody records, calibrated physical measurements, or other substrate-appropriate evidence.

[ASSUME: At least one evidence channel not unilaterally controlled by either interested root can be established for a cross-root seam. Where that is technically or institutionally impossible, MICRM exposes the evidentiary dependency but cannot manufacture independent proof.]

### 10.2 Incident-relevant handoff state

The comparison object at a seam is not only the payload. It is the state transferred together with the consequence-relevant metadata and delivery relations through which the downstream traversal receives and interprets it.

Working handoff-state fields:

```text
handoff state:
  payload or transferred physical state:
  interface type:
  provenance representation:
  authority representation:
  destination or receiving interface:
  ordering:
  multiplicity:
  timing and expiry:
  framing or envelope:
  transformation lineage:
  consequence-relevant resource or magnitude fields:
  residual unobserved fields:
```

Not every incident requires every field. The alleged contribution class determines which fields are consequence-relevant.

Digital digest equality may establish payload identity. It does not establish identity of the complete handoff state and does not prove that no internal or transition effect occurred.

### 10.3 Contribution-capacity profile

For the selected consequence and alleged contribution class, evaluate the contribution-bearing state using a typed capacity profile:

```text
contribution-capacity profile:
  presence or state continuity:
  interface type or interpretability:
  authority:
  provenance:
  reach or routing:
  timing, order, and multiplicity:
  availability or retention interval:
  control visibility or inspectability:
  magnitude, value, energy, or resource demand:
  required combination conditions:
  operative causal capacity:
```

State continuity concerns whether the contribution-bearing state persisted as the same state or mechanism across the interval. Availability or retention interval concerns whether and for how long that state remained accessible to a downstream function. The two are recorded separately.

A contribution-bearing state may be a complete mechanism, a defect, a false authority representation, a physical property, or one component of a distributed mechanism.

**Operative causal capacity** is the incident-specific capability of a state or transition to enable, disable, authorize, parameterize, redirect, amplify, suppress, or otherwise alter a consequence-relevant transition through a directed, uncut, type-compatible mechanism leading to the selected consequence.

Operative causal capacity is established only when independently supported structural evidence identifies all of the following at the incident resolution:

1. the state or transition was present or enabled during the relevant interval;
2. the receiving interface could interpret, consume, or physically respond to it;
3. required authority, provenance, target reach, and interface access were available;
4. quantitative, temporal, multiplicity, and persistence conditions were satisfied;
5. an identified mechanism or structural composition relation connected it to a consequence-relevant transition; and
6. the required capacity was not removed or neutralized before it could operate on that path.

Operative causal capacity is a property of a state or transition relative to an incident mechanism. It does not attach every root through which the state passed. Root attachment remains governed by Section 4.5. A passive carrier, background utility, or contextual condition is not bound merely because it is a but-for precondition of the run.

#### Cross-substrate examples

| Substrate | Contribution-bearing state and operative-capacity finding |
|---|---|
| AI / agentic | An injection-bearing instruction is admitted into Context, is interpretable by the model, and can alter Action Selection while the agent retains tool authority. The instruction and tool authority may form a distributed mechanism at the model-to-tool decision locus. |
| IT / cloud | A credential token reaches an IAM API before expiry, carries the role required to modify policy, and is accepted by the target interface. The token has operative capacity for the policy-write contribution class; an unchanged packet relay does not attach solely for transporting it. |
| OT / industrial control | A setpoint frame reaches a PLC register while the controller is in the accepting mode, carries the required write authority, and specifies a value and duration capable of crossing the selected process threshold. |
| Cyber-physical / robotic | A signed route-override command reaches a flight controller, satisfies the controller's command interface and authority check, and can parameterize physical motion into the selected restricted region. |
| Institutional / legal / financial | A false income or identity representation enters an eligibility or credit rule as an accepted provenance-bearing field and can change the rule transition that produces the selected denial, approval, or pricing consequence. |

### 10.4 Three-tier consequence-relevant transformation test

A transformation is evaluated per path, per incident, and relative to the selected consequence.

#### Tier 1: witnessed state identity

Independently witnessed evidence establishes no observed change in the incident-relevant handoff state at the resolution required for the incident.

Tier 1 establishes endpoint state identity at the witness points. It does not establish that the intermediary did not parse, execute, classify, temporarily alter, restore, duplicate, delay, reroute, authorize, or create a side effect.

#### Tier 2: witnessed representation equivalence

A reversible representation transformation occurred, and independently supported evidence establishes all of the following:

1. the actual transformation and configuration are identified;
2. the transformation was reversible over the actual incident input;
3. a witnessed inverse reproduced the inbound handoff state at the incident-relevant resolution;
4. no consequence-relevant component interpreted, selected, routed, authorized, rejected, delayed, actuated on, or otherwise received the transformed representation through an enabled consequence-relevant function before inversion;
5. the transformed interval introduced no consequence-relevant side effect;
6. the transformation did not change authority, provenance, reach, timing, order, multiplicity, availability, persistence, control exposure, resource demand, physical magnitude, or other typed capacity relevant to the selected consequence;
7. capacity is excluded under the dark-surface capacity-exclusion test.

Content-blindness and invertibility are supporting properties. They are not safe harbors.

A Tier 2 interval may be described as an opaque reversible interval only when the transformed state was causally inert with respect to the selected consequence until witnessed restoration.

#### Tier 3: contribution-capacity comparison

For every other transformation, compare the inbound and outbound contribution-capacity profiles.

Directional findings:

- **Preserved:** the relevant capacity remained unchanged.
- **Introduced or increased:** the transformation created, activated, amplified, combined, redirected, authenticated, concealed from control, or otherwise strengthened a relevant capacity.
- **Reduced or removed:** the transformation attenuated, isolated, invalidated, neutralized, or removed a relevant capacity.
- **Indeterminate:** evidence does not establish one of the preceding findings.

A change in form is evidence warranting examination. Form change is not an independent finding of consequence relevance.

#### Transformation finding and accountability effect

| Transformation finding | Exact factual claim | Effect on transport-only or structural exit |
|---|---|---|
| Consequence-neutral transformation established | No typed capacity relevant to the selected consequence changed | This condition may be satisfied; other exit conditions still apply |
| Consequence-relevant transformation established | One or more typed capacities changed | Transport-only exit fails; direction determines whether the change attaches the root or supports neutralization |
| Consequence relevance unresolved | The comparison cannot be completed | Exit fails by burden; contribution is not thereby proven |

A successful sanitizer may perform a consequence-relevant transformation by reducing or removing a capacity and may support structural exclusion from a later independently produced harm. A semantic summarizer is not transport-only because it performs consequence-relevant selection even where the capacity comparison remains unresolved.

### 10.5 Representation-reach condition

For every safety, accuracy, provenance, identity, authentication, or authority representation created, altered, attached, or validated by the root, independently supported structural evidence must establish either:

- that the representation had no enabled path into a consequence-relevant admission, authorization, routing, selection, or control function; or
- that the representation lacked capacity to affect that function.

If the representation's reach or capacity is unresolved, transport-only exclusion and any cut condition depending on representation neutrality are not established.

Mere presence in a record does not prove reliance. Actual subjective or behavioral reliance is not required. The test concerns enabled structural reach and capacity.

Where a representation is present in admitted Context and selection or authorization is fused and unrecordable, the inability to exclude its reach leaves the condition unresolved and blocks exit without proving that the representation affected the decision.

### 10.6 Counterfactual control-visibility rule

Actual-run evidence may establish that a consequence-relevant control did not receive, inspect, or interpret a state. A finding that a transformation changed control visibility for the selected event requires an event-level counterfactual result under Section 10.7.

Where an exit claim depends on proving that the specific selected action would have been blocked, modified, delayed, escalated, or permitted differently, a distribution-level finding is insufficient. It does not establish the outcome of the unobserved incident event.

Where the counterfactual cannot be executed or structurally bounded under Section 10.7, the effect remains unresolved and the exit condition is not established.

### 10.7 Nondeterministic control-counterfactual standard

Counterfactual evaluation uses the strongest mode supported by independently controlled evidence.

Define the **incident-consistent control-state collection** as every control state consistent with the independently supported implementation semantics and not excluded by the incident evidence. The state description includes implementation and version, configuration, persistent and session state, external dependencies, time-dependent inputs, and random seed or entropy state where captured.

The counterfactual claim states the tested factor and the consequence-relevant outcome predicate, such as whether the control would reject, neutralize, modify, delay, escalate, or permit the alleged contribution.

#### Mode 1: state-complete replay

The incident-consistent control-state collection is established as one state. The control and its dependencies are reproduced at that state, the tested factor is changed, and every other consequence-relevant dimension is held equivalent. A reproducible outcome difference establishes an event-level difference. A reproducible equivalent outcome establishes event-level equivalence.

#### Mode 2: state-bounded policy-complete evaluation

A deterministic policy, transition system, independently validated executable model, or sound formal abstraction is complete for the relevant input class and every state in the incident-consistent control-state collection. Exhaustive or deductive evaluation compares the observed and counterfactual inputs over that complete collection.

- Event-level difference is established only when the stated outcome-difference predicate holds for every incident-consistent state.
- Event-level equivalence is established only when the consequence-relevant outcome is equivalent for every incident-consistent state.
- If the result differs across incident-consistent states, the event-level counterfactual is unresolved.

#### Mode 3: matched stochastic evaluation

Where exact incident state or randomness cannot be reproduced, paired or matched trials may evaluate an outcome distribution. The evaluation independently records:

- the control implementation, version, and configuration;
- the incident-state equivalence class and excluded state dimensions;
- the isolated tested factor;
- the consequence-relevant outcome class and metric;
- the sampling, pairing, seed-management, stopping, and exclusion rules;
- the declared tolerance, error bound, or decision threshold;
- and independent custody of trial inputs and outcomes.

Numeric tolerances and assurance levels are supplied by an applicable overlay or assurance regime and are declared before the analysis. A matched stochastic result may support an overlay, assurance analysis, or population-level claim. It cannot by itself establish an event-specific MICRM exit for the selected consequence.

The standard has five findings:

| Finding | Exact factual claim | MICRM use |
|---|---|---|
| Event-level difference established | Mode 1 or Mode 2 establishes a different consequence-relevant control outcome for the selected event across the complete incident-consistent state collection | May support an event-specific transformation, cut, or exclusion claim |
| Event-level equivalence established | Mode 1 or Mode 2 establishes an equivalent consequence-relevant control outcome for the selected event across the complete incident-consistent state collection | Excludes the claimed event-level control-visibility effect |
| Distribution-level effect established | Matched stochastic evaluation establishes a declared change in the outcome distribution | May support an overlay, assurance analysis, or population-level claim; does not establish the selected event would differ |
| Distributional equivalence established | Matched stochastic evaluation establishes equivalence within the declared tolerance | May resolve a distribution-level claim; does not prove event-level equivalence |
| Counterfactual unresolved | Required state, model validity, trial design, or error bound is not established, or incident-consistent states yield mixed event-level results | Exit fails by burden where the event-level counterfactual is required; no outcome difference is thereby proven |

A simulator, digital twin, surrogate, or reconstructed institutional process may be used only for the dimensions over which its validity is independently supported. Unvalidated dimensions remain unresolved.

Counterfactual evaluation record:

```text
counterfactual evaluation record:
  claim identifier:
  affected control, layer, or seam:
  selected incident event:
  tested factor:
  incident-consistent control-state collection or equivalence class:
  evaluation mode:
  control implementation, version, and configuration:
  outcome predicate or distribution metric:
  tolerance or error bound, if applicable:
  finding:
  evidence sources:
  independent corroboration:
  custody and modification control:
  residual dark-surface bound:
```

---

## 11. Cross-Root Seam Record

A cross-root seam record is a run-level edge record. It links to, but does not replace, the downstream Context, Action Selection, Gate, Actuation, and Consequence records.

```text
Cross-root seam record:
  seam identifier:
  incident identifier:

  upstream:
    traversal identifier:
    bonded root:
    consequence identifier:

  downstream:
    traversal identifier:
    bonded root:
    Context identifier:
    selected consequence identifier:

  handoff state:
    transferred state or artifact:
    interface type:
    upstream-observed identity or measurement:
    downstream-observed identity or measurement:
    provenance representation:
    authority representation:
    destination:
    ordering:
    multiplicity:
    timing and expiry:
    framing or envelope:
    transformation lineage:
    alleged contribution class identifier:
    contribution-capacity profile:
    distributed-component identifier, if any:
    composition locus or ordered subgraph, if any:
    composition rule or operator, if any:
    co-component seam or path references:
    structural-composition finding:

  admission and Context formation:
    admission controls:
    accepted / rejected / transformed / quarantined:
    accountability-equivalence comparison, if borderline:
      embedded representation graph reference:
      promoted representation graph reference:
      separately committed result evidence:
      resolution finding (equivalent / promoted / fork unresolved):
      promoted traversal identifier, if established:
    downstream Context binding:
    input envelope:
    protective scope:
    decision criteria:
    provenance or authority fields admitted:
    representation-reach result:

  downstream authority continuity:
    Action Selection record:
    Gate-stage record:
    Gate record channels, repeatable per channel:
      channel identifier:
      evidence-record link:
      evidence source:
      event-class definition:
      selected-action class-membership result:
      emission policy:
      Gate evaluation event identifier:
      per-event Gate outcome evidence:
      operation and retention evidence:
      silence interpretation:
      record-channel residual dark-surface bound:
      record-silence exclusion result:
      independent corroboration:
      custody and modification control:
    final Gate outcome:
    Actuation identity:

  evidence:
    upstream witness:
    downstream witness:
    independent witness:
    counterfactual evaluation record links, repeatable if used:
      record link:
    non-Gate record channels, repeatable per channel:
      channel identifier:
      evidence-record link:
      evidence source:
      event-class definition:
      incident-event class-membership result:
      emission policy:
      per-event outcome identifier or evidence:
      operation and retention evidence:
      silence interpretation:
      record-channel residual dark-surface bound:
      record-silence exclusion result:
      independent corroboration:
      custody and modification control:
    custody and modification control:
    residual dark-surface bound:
    dark-surface capacity result:
    confidence:
```

The schema is substrate-neutral at the field level. Evidence implementations may use message captures, signed records, command logs, calibrated sensor measurements, transaction records, physical inspection, or other substrate-appropriate means.

Aggregate seam-level witness, custody, and dark-surface fields describe the seam record as a whole. They do not substitute for the channel-specific evidence required to interpret an individual channel's record or silence. A channel entry may satisfy its channel-level fields through its evidence-record link where the linked per-layer record supplies them; the seam record links to, but does not replace, layer records.

---

## 12. Substrates

The same stack and joint-accountability rule run across:

- **AI / Agentic Systems:** LLMs, agents, copilots, planners, tool-using models, autonomous workflows.
- **IT / Cloud / Enterprise Automation:** CI/CD, IAM, cloud remediation, SOAR, ticketing, SaaS workflows.
- **OT / Industrial Control:** SCADA, PLCs, ICS, grid, water, manufacturing, building systems.
- **Cyber-Physical / Robotic / Kinetic:** drones, robots, autonomous vehicles, medical devices, physical access.
- **Institutional / Legal / Financial Decision Systems:** benefits, credit, insurance, hiring, healthcare eligibility, fraud, legal routing, financial transfers.

The model does not assume that every substrate emits digital artifacts. Witnessed state identity may be established through substrate-appropriate measurement and custody evidence.

---

## 13. Overlays

Legal, regulatory, contractual, safety, and sector-specific regimes attach as authority overlays, not substrates. They bind at the Authority / Accountability frame and vary by domain and consequence tier.

MICRM identifies the bound set and binds each remaining root to the whole consequence by default. Overlays may:

- apportion shares;
- define legal causation standards;
- define negligence, fault, intent, or culpability;
- set consequence thresholds;
- assign indemnity or contribution rights;
- impose inspection or monitoring duties;
- and specify evidentiary or procedural standards beyond the MICRM core.

An overlay's apportionment rule does not alter the core bound set.

### 13.1 Overlay incentive audit

A MICRM-attached overlay that apportions burden among bound roots records whether its allocation rule creates incentives to weaken controls, narrow declarations, or suppress evidence. The audit is descriptive and does not prescribe a liability regime.

At minimum, the overlay evaluates:

- **Upstream-retention incentive:** whether a downstream root's allocated burden decreases when an upstream root remains bound, where the downstream root can influence that result through Gate quality, protective-scope declaration, path instrumentation, or evidence production.
- **Evidence-suppression incentive:** whether a root's allocated burden decreases when evidence needed for another root's cut or exclusion is unavailable, ambiguous, withheld, or poorly retained.
- **Control-avoidance incentive:** whether a root is allocated more burden for implementing, instrumenting, or successfully operating a consequence-relevant control than it would receive for omitting that control, holding the selected consequence and other conduct constant.
- **Scope-minimization incentive:** whether a root can reduce allocated burden by declaring a narrower input envelope, protective scope, event class, or control role than the system actually performs.

For each incentive found, the overlay states either a mitigation or an explicit justification for accepting it. Possible mitigations include contribution- or fault-based allocation independent of the number of remaining roots, control-quality credit, anti-spoliation or adverse-inference rules, and predeclared allocation rules that do not reward evidentiary ambiguity. These examples are non-exclusive and are not MICRM core requirements.

The audit does not change candidate-root membership, attachment, propagation, or exit. It records incentive effects introduced by the overlay after the MICRM bound set has been determined.

---

## 14. Example Placements

- RAC: Authority / Gate coordinate, AI-agent substrate.
- AFR: Evidence spine, AI-agent substrate.
- CORTHEM: Authority, evidence, and accountability boundary, AI-governance substrate.
- SCADA pre-actuation safety interlock: Gate layer, OT substrate.
- Mechanical governor acting during motion: Actuation-layer control, OT or cyber-physical substrate.
- PLC command: Actuation layer, OT substrate.
- Drone geofence that authorizes or rejects a selected route before motion: Gate layer, cyber-physical substrate.
- Drone limiter acting during motion: Actuation-layer control, cyber-physical substrate.
- Cloud IAM policy that authorizes a selected operation before execution: Authority / Gate coordinate, IT or cloud substrate.
- SOAR playbook: Action Selection and, where it includes final authorization, Gate coordinates, enterprise-automation substrate.
- Email security gateway or third-party sanitizer: Context-boundary control, or its own traversal when it independently accepts, rejects, quarantines, releases, routes, or transforms the handoff.

Implementation names do not control MICRM placement. A product called an "input gate" is not necessarily the Gate of a traversal.

---

## 15. Worked Path Outcomes

These examples illustrate the full-draft mechanics. They are not a substitute for incident-specific evidence and do not constitute ratification of the uncertainty-resolution additions.

### 15.1 Prompt injection across an agent seam

A produces a handoff carrying an injection component. B admits it into Context. B's Action Selection is displaced or cannot be distinguished from displaced selection. B's Gate either fails or is not independently established.

Result:

- A remains bound if its contribution-bearing capacity persists through the seam.
- B remains bound if its traversal selects and actuates the harmful action or its consequence-relevant control fails.
- A declared Gate that fails the relevant control function or lacks the required consequence-relevant structural capacity does not launder A's contribution.
- Missing selection evidence does not prove displacement, but it prevents a cut.

### 15.2 Accurate upstream context, downstream harmful policy

A provides accurate, conforming context. B independently selects a harmful action under B's own policy. A's handoff carries no contribution-bearing mechanism or defect relevant to the harm. B retains independently evidenced authority through a consequence-relevant Gate.

Result:

- A may exit through a qualifying propagation cut.
- B remains bound to the whole selected consequence.

Where the selected consequence falls outside every declared Gate protective scope, the cut is unavailable and A's exit, if any, is structural exclusion under Section 9.4, such as absence of any contribution-bearing capacity in the handoff. The cut is a transfer mechanism; structural exclusion is a non-contribution finding. They are not interchangeable.

### 15.3 Neutral relay

A originates a harmful component. C relays it without consequence-relevant transformation, selection, authority representation, control role, or transition change. B combines or actuates it.

Result:

- A remains bound.
- C may be structurally excluded from B's downstream consequence as transport-only.
- C remains accountable for its own delivery traversal.
- B remains bound.

### 15.4 Failed filter

C is configured and represented as a consequence-relevant filter. It passes a harmful component unchanged.

Result:

- Identical payload evidence does not make C transport-only.
- C attaches because it held and failed a consequence-relevant control role.
- Upstream accountability continues unless separately cut or excluded.

### 15.5 Successful neutralization

C positively removes or invalidates an upstream contribution-bearing capacity. B later produces an independently originated harmful consequence.

Result:

- Upstream propagation stops at the established neutralization.
- C does not attach to B's later harm solely because it performed the neutralization.
- C remains accountable for its own traversal and neutralization consequence.

### 15.6 Actuation-layer governor

An upstream unsafe command reaches B. A governor acting during Actuation prevents the unsafe physical state.

Result:

- The governor is an Actuation-layer control, not the Gate.
- It cannot finalize a Gate-based propagation cut.
- Positive neutralization can structurally exclude the upstream mechanism from a later consequence that did not occur through that path.

### 15.7 Fused model self-check

An agent selects an action and generates a self-check within the same model call. No independently captured post-selection authorization event exists.

Result:

- The self-check does not establish an independent Gate for severance.
- Structural exclusion at the seam or a separate external post-selection control may still establish exit.

### 15.8 Distributed command and authority

A produces a command identifying a protected operation. B separately produces an authority representation required by the receiving interface. Neither state alone is type-compatible with the alleged contribution class. C receives both within the required interval and combines them at an identified command-plus-authority locus.

Result:

- the indexed collection forms a distributed contribution mechanism only when every structural channel-composition condition is established;
- A and B are evaluated for attachment to the components attributable to their traversals;
- C attaches if its traversal performs consequence-relevant combination, selection, authorization, representation, or control;
- a transport-only relay on either path may be structurally excluded without stopping propagation from the component's origin root;
- and if any required association, timing, authority, reach, type, or composition condition is unresolved, the composition finding is unresolved and cannot support exit.

### 15.9 Borderline admission mechanism

A third-party service under root C evaluates an incoming artifact and can commit it to a quarantine queue or a released-content queue. The queue placement persists independently and becomes Context for B.

Result:

- embedding the service only inside B's Context would hide C's bonded root, a separate consequence, and a path-level control role, so the representations are not accountability-equivalent and C's queue-placement decision is promoted to a traversal;
- a passive format check inside B that emits evidence but produces no graph-significant difference may remain a Context-boundary control when accountability equivalence is independently established;
- and if equivalence or the separately committed result cannot be established or excluded, both evidence-compatible representations remain in an admission-resolution fork and an exit must hold under every evidence-compatible representation in which the root is a candidate.

---

## 16. Deferred Register

The following remain outside v0.2:

1. **Gate modification re-entry:** when a consequence-relevant Gate modification must be modeled as a new Action Selection rather than an internal Gate-stage transition.
2. **Consequence-resolution rule:** formal rule for selecting the consequence node and incident resolution where multiple causal descriptions are possible.
3. **Population-level control coverage:** formal treatment of whether a control evaluated every qualifying case across a run, deployment, or population, including denominator definition, false-negative estimation, and required assurance levels. The core requires positive per-event outcome evidence where exit depends on a permitted or non-intervened event, and disclosure of record-channel emission policy; coverage measurement standards and required coverage levels belong to assurance regimes and overlays.
4. **Keep-in-pocket architecture:** tiering, irreversibility, two-ledger residual, mount-point regime, and bonded-root economics remain outside this draft unless separately ratified.

The prior deferrals for contribution typing, distributed-mechanism composition, cross-substrate causal-capacity examples, admission-traversal resolution, nondeterministic counterfactuals, and overlay incentive effects are resolved in Sections 4.10, 4.11, 5.3, 7.2, 10.3, 10.7, and 13.1.

---

## 17. Provenance Appendix

This appendix records architectural provenance. It does not assign legal authorship beyond the statements below.

### 17.1 Larry Peseckis original architecture

The following originate with Larry Peseckis:

- the six traversal layers;
- the traversal as the unit of one machine-initiated action;
- the run as a directed graph of traversals;
- the evidence-spine strength gradient;
- the first bonded-root invariant;
- the governed object as machine-initiated consequence rather than AI;
- substrates as horizontal instances;
- and overlays as authority attachments rather than substrates.

### 17.2 Prior dialogue contributions ratified by Larry

The authority and accountability directions as one bidirectional frame, and the residual-dark-surface framing, emerged in prior dialogue and were ratified by Larry.

### 17.3 Joint-accountability development contributions

The following emerged through the joint-accountability dialogue between Larry Peseckis and AI collaborators. Architectural content developed through 2026-07-15 was ratified for inclusion in the prior review state. The six uncertainty resolutions added on 2026-07-16 remain review-draft proposals until Larry ratifies the complete full draft.

At the provenance resolution used in v0.2, the items below are attributed to the dialogue as a development process rather than assigned item by item to a specific participant, except where a finer attribution is stated explicitly. This avoids unsupported fine-grained claims where the iterative record and session ledgers do not cleanly support them. It does not imply equal contribution, erase Larry's ratification authority, or prevent a later scholarly reconstruction from the preserved conversation record.

- burden inversion for exit;
- whole-consequence binding by default, proposed in dialogue and ratified by Larry, with apportionment delegated to overlays;
- per-path evaluation;
- the shared crack as attempted negative proof across a partially observable boundary whose evidence an interested root can control;
- the seam-to-Gate evidentiary interval;
- the Gate as the finalization point of a propagation cut;
- the witnessed run-level seam record;
- mechanism-or-defect persistence, later narrowed so that upstream propagation may continue through a neutral carrier without attaching every carrier root;
- positive structural exclusion;
- confirmed-bound, presumptively-bound, and structurally-excluded investigative statuses;
- control-independence criteria for evidence;
- positional Gate and functional Control;
- admission control as Context-boundary evidence or its own traversal;
- incident-relative handoff-state comparison;
- the three-tier transformation scaffold;
- endpoint state identity distinguished from absence of transformation;
- opaque reversible intervals;
- form demoted from a materiality finding to forensic evidence;
- directional transformation findings;
- unresolved transformation relevance distinguished from established consequence-relevant transformation;
- transport-only exclusion;
- attachment separated from upstream propagation;
- capacity typing replacing plausibility;
- dark-surface testing across channels and structurally composable channel sets;
- representation reach replacing behavioral reliance;
- the counterfactual control-visibility flag and minimum rule;
- and the distinction between record-channel emission policy and residual dark surfaces, including the positive per-event outcome requirement where exit depends on a permitted or non-intervened event, which emerged in dialogue prompted by the five-department Chinese 人工智能拟人化互动服务管理暂行办法 concerning AI anthropomorphic interaction services, effective 2026-07-15, and was handed into MICRM development the same day.

### 17.4 Resolution of prior uncertainty markers

The following were constructed in dialogue at Larry's direction on 2026-07-16 and are included in this full review draft at dialogue-level attribution:

- the incident-complete alleged-contribution type record and field-specific compatibility rule;
- the accountability-sensitive graph-resolution rule for admission traversal promotion and unresolved representation forks;
- the distributed contribution mechanism definition and mechanism-specific structural channel-composition test;
- the operative causal capacity definition, its separation from generalized but-for causation, and the five-substrate examples;
- the state-complete, state-bounded policy-complete, and matched-stochastic counterfactual evidence modes; and
- the overlay incentive audit separating MICRM's bound set from apportionment-created Gate, evidence, control, and scope incentives.

These resolutions replace the corresponding deferrals in the prior review state. They require integrated review and Larry's full-text ratification before canonicalization.

### 17.5 Superseded formulations

The following working formulations are not part of v0.2:

- severance unless upstream defeat is proven from upstream intent or action-selection narration;
- Gate evidence as the sole record of the cross-root transition;
- automatic severance when a Gate operates within its declared specification;
- declared semantics as the material-transformation test;
- mechanism carriage as a rule binding every conduit to every downstream consequence;
- dark-surface "closure" as a total-observability claim;
- digest identity as proof that no transformation occurred;
- invertibility plus content-blindness as proof of non-relevance;
- form change as an independent materiality finding;
- missing evidence treated as proof of material transformation or contribution;
- "known channel" as the dark-surface exit threshold;
- and downstream "reliance" as the authority-representation discriminator.

### 17.6 Version status

This provenance appendix records the development history represented by the full draft. The integrated wording remains non-canonical until Larry ratifies the complete document and it is committed as the next canonical version. The prior reviewer ratification of draft SHA-256 `a493d4793431cd31b0772a05a60e2856f1af055e464f43ab216eb4ab67dc988b` does not extend to the substantive uncertainty resolutions added in this version.

---

## 18. Structure Summary

- **Rows:** the six layers of one traversal.
- **Columns:** substrates in which those layers appear.
- **Frame:** Authority flows downward and Accountability flows upward, terminating at a bonded root.
- **Spine:** evidence and reconstructability across all layers, with a strength gradient and a residual dark surface.
- **Run graph:** directed traversal composition, including cross-root seams and convergent paths.
- **First invariant:** every traversal must terminate authority and accountability at one bonded root.
- **Second invariant:** every candidate root is bound to the whole selected consequence unless every path is cut or structurally excluded by independently supported structural evidence.
- **Gate:** the positional final control stage after Action Selection and before Actuation.
- **Control:** the functional supertype that may operate at any layer or transition.
- **Attachment and propagation:** separate questions at every intermediary.
- **Contribution type and composition:** incident-complete type records and mechanism-specific composition determine whether states or channels can carry an alleged contribution class.
- **Counterfactual evidence:** event-level and distribution-level findings are separated for deterministic, stateful, and stochastic controls.
- **Overlays:** legal, regulatory, contractual, safety, and sector regimes may apportion the core bound set; MICRM-attached apportionment overlays record the incentive effects introduced by their allocation rules.

---

*MICRM-v0.2 full review draft. Compiled from MICRM-v0 and joint-accountability development through 2026-07-16. All prior explicit uncertainty markers are resolved in the text. Non-canonical until integrated review, full-text ratification, and witnessed commit.*
