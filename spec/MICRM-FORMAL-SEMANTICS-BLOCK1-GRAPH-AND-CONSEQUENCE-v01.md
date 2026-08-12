```
ARTIFACT:         MICRM-FORMAL-SEMANTICS-BLOCK1-GRAPH-AND-CONSEQUENCE-v01.md
FILE-THIS-AS:     corpus/declarations/
AUTHORED-UNDER:   lane_tooling
INTENDED-REGIME:  declaration
STATUS:           DRAFT, C1 REPRESENTATION-CONSTRUCTION REPAIR
SCOPE:            STEP 1 BLOCK 1, DEFINITIONS D9-D17
```

# MICRM FORMAL SEMANTICS — BLOCK 1: GRAPH AND CONSEQUENCE MODEL

New generation, not a supersession. It replaces
`sha256 d91f9145d88b03be82e5ce27ed9b16ec193a87b8bbf707add2b2e3fe24f60d27`.

Self-contained: every normative definition in scope is reproduced in full.

```
$ TZ='America/Denver' date '+%Y-%m-%d %H:%M:%S %Z'
2026-08-07 22:57:15 MDT
```

## 0. A self-contradiction between two sections of my own text

D9 justified the multigraph by saying **mutually conflicting** relation instances
must coexist within a representation. Section 2.4 said **mutually exclusive items
never co-occur** in one representation. Both were in the delivered file, nine
sections apart, and they cannot both govern.

The cause is the same one as last round in a different direction: 2.4 was written
after D9 and nothing re-read D9 against it. Two rounds running, the newer
construct was checked against the reviewer's finding and not against the text it
had to sit beside.

## 0.1 The prior contradiction, retained for the record

Adding `Γ` in the previous generation broke the single `≺` I had defined one
section earlier. Executed:

```
G1 acyclic: True | G2 acyclic: True
union acyclic: False
a global strict order containing x<y and y<x exists: False
```

Two member graphs may each be acyclic and evidence-compatible while ordering the
same pair oppositely. Requiring one global `≺` over the bundle is unsatisfiable
exactly when ordering is itself the thing under analysis, which is the case the
bundle exists to represent.

The defect shape is familiar and worth naming precisely: **I added a new construct
without re-checking the constraint it was supposed to live under.** `≺` was
written for one graph; `Γ` was written for many; nothing re-read `≺` afterwards.

## 1. Layers

```
material graph      event occurrences, state occurrences, path-bearing relations
principal layer     principal records, attribution assertions, delegation assertions
Block 2 output      closure-principal qualification; closure established,
                    failed, or unresolved
```

The principal layer is attached to the material graph, not part of its vertex set.
`attributed` terminates at a **principal record**; `delegated` is an **asserted
delegation record** whose authority validity is Block 2's; a Block 1 seam is a
**cross-principal seam** and becomes a **cross-closure-principal seam** only after
Block 2 evaluates both sides.

## 2. Representations, bundle, and identity **[NEW]**

### 2.1 Analysis bundle

> An **analysis bundle** `Γ = {R₁, …, Rₙ}` is a finite family of individually
> well-formed, evidence-compatible **member representations** over one incident.

### 2.2 Member representation

> A **member representation** `Rᵢ` consists of a material graph `Gᵢ`, its
> **representation-specific occurrence order `≺ᵢ`**, its traversal partition, and
> its **compatible principal-layer assertions**.

> **No material or principal-layer fact from an incompatible representation may be
> used to derive a seam, a path status, or any later closure finding.**

The principal-layer clause is the one that was missing. Two representations may
carry different attribution assertions, and storing attribution globally would let
a cross-principal seam be assembled from one representation's material graph and
another's incompatible attribution.

### 2.3 Identity records

Encoding is an implementation matter. **Stable identity is not.**

```
analysis-bundle record
  bundle identifier                 evidence-snapshot identifier
  incident identifier and boundary  construction-rule version
  member representation identifiers coverage and pruning record
  residual representation dark surface

member-representation record
  representation identifier         precedence relation ≺ᵢ
  bundle identifier                 traversal partition
  occurrence set                    compatible principal-layer assertion set
  path-bearing relation-instance set construction evidence
  incompatibility and alternative references
```

A content hash may identify a serialization. Semantic identity does not depend on
file identity.

### 2.4 Representation assignment **[WIDENED]**

The prior normative sentence assigned only unresolved relation instances, while
the prose claimed a wider scope. The normative rule now matches:

> Representation membership applies to **every result-relevant item that varies**:
> unresolved relation instances; mutually inconsistent corroborated or asserted
> instances; endpoint identity; relation type; traversal partition; occurrence
> identity; principal attribution; delegation assertion; state continuity;
> composition mechanism; and occurrence ordering.

Mutually exclusive items never co-occur in one representation.

### 2.5A Where conflict lives **[NEW]**

```
evidence record          conflicting assertions may coexist
member representation    only mutually compatible relation instances coexist
analysis bundle          incompatible relation alternatives occupy different
                         representations
```

### 2.5A.1 Representation construction **[C1 REPAIR]**

> **Where two admitted, result-relevant assertions cannot jointly inhabit one
> well-formed member representation under the declared consistency constraints,
> the alternatives are represented separately.**
>
> **This separation preserves evidence-compatible alternatives. It is not itself a
> D29 finding that the records are `CONFLICTING`.**

That second sentence is the whole of the C1 repair. Separation is a
**construction** operation owned here; characterisation is an **evidentiary**
operation owned by B4 D29. The two were conflated, and B4 then carried a rule that
appeared to gate construction on a characterisation's support.

So this is licensed without any D29 finding:

```
R₁ contains assertion A
R₂ contains assertion B
```

and it does **not** assert `D29(A, B) = CONFLICTING + CORROBORATED[T]`.

D29 characterises conflicting evidence **before, or across, the representation
family**, and never selects between contradictory facts from inside one accepted
graph, because an accepted graph does not contain contradictory facts. What D29
governs is whether a later **consolidation** — merge, subsume, prune — is
warranted, and how the relationship is reported. See B4 D29 as repaired.

### 2.5 Coverage **[NEW]**

```
STEP0-RULING::R8
APPLICATION::APPLIED
```

Per Step 0 R8, a **residual dark surface** is a bounded set of evidence-compatible
states, channels, transitions, or mechanisms left unobserved relative to a
declared observation and claim scope. The representation-level form below is that
definition applied to the representation family.


Compatibility alone does not prevent an investigator from omitting an unfavourable
but evidence-compatible representation. `G₁` with no path and `G₂` with an
unresolved path are both compatible; a bundle containing only `G₁` yields a
favourable result from a silent omission.

Three populations, so the rule does not define retention by retention:

```
generated              candidate representations produced by the declared
                       construction procedure within the evidence-search scope
validly excluded       representations removed by a recorded incompatibility or
                       pruning finding
retained               the members of Γ
```

> **`Γ` contains every generated, result-relevant, evidence-compatible
> representation that has not been validly excluded or pruned by a recorded
> finding.**
>
> A **bounded family not yet generated or examined** is recorded as a **residual
> representation dark surface** and **prevents closure of the dependent result.**

The earlier wording said *every retained*, which let an investigator answer an
omission by saying the representation was never retained.

Bundle record fields for this, per 2.3: representation-generation procedure,
evidence snapshot, retained members, excluded or pruned representations with
reasons, unresolved representation families, result-relevance criterion, residual
representation dark surface.

This does not require enumerating metaphysically possible graphs. Bare possibility
remains insufficient, exactly as in D14.1 and D15.1. It requires accounting for
bounded, evidence-compatible, result-changing alternatives.

## D9. Node sorts and graph class

```
STEP0-RULING::R5
APPLICATION::APPLIED
```

> The material graph of a member representation is a **finite, two-sorted, typed
> directed multigraph** over **event occurrences** and **state occurrences**.

Multigraph is load-bearing, and its justification is **repeated compatible
instances**, not conflicting ones:

```
repeated compatible relation instances between one endpoint pair
multiplicity of delivery or consumption
distinct evidence records supporting the same relation
several relation types sharing endpoints
```

Mutually exclusive factual alternatives are **removed** from this justification.
They live in the evidence record and are separated across representations, per
2.5A.

PROV profile per Step 0 R5, as debts not equivalences: event occurrence extends
`prov:Activity`, state occurrence extends `prov:Entity`, principal record extends
`prov:Agent`, association is not closure.

A traversal is not a node.

### D9.1 Traversal-occurrence identity

```
traversal identifier            member event occurrences
incident identifier             layer assignment per member
initiating trigger or objective within-traversal order
selected-action occurrence      actuation occurrence or no-actuation status
temporal boundary               graph-construction evidence
identity alternatives, if unresolved
```

> Two event occurrences belong to the same traversal occurrence only when evidence
> places them within one machine-action episode, from one initiating trigger or
> admitted Context, through one selected-action disposition and its resulting
> Actuation or recorded non-actuation. Shared principal, shared process, shared
> session, shared objective, or temporal proximity alone is insufficient.

Alternative partitions are representation-varying per 2.4 and are carried as
distinct members of `Γ`, not as a note inside one graph.

## D10. Relations

| Relation | From | To | Path-bearing |
|---|---|---|---|
| `produced` | event occurrence | state occurrence | yes |
| `consumed` | state occurrence | event occurrence | yes |
| `succeeds` | event occurrence | event occurrence | yes, within one traversal occurrence only |
| `derived` | state occurrence | state occurrence | yes, degraded |
| `precedes` | event occurrence | event occurrence | no |
| `attributed` | event or state occurrence | principal record | no |
| `delegated` | principal record | principal record | no, asserted |

No seam relation: a cross-principal seam is a property of an adjacent
produced-state-consumed segment whose event occurrences attribute to different
principal records **within one representation**.

`prov:wasInformedBy` has no MICRM relation.

## D11. Occurrence precedence **[PER REPRESENTATION]**

> **Each member representation `Rᵢ` carries its own strict partial order `≺ᵢ`
> over the occurrences it represents: irreflexive and transitive.** Every
> path-bearing relation instance in `Gᵢ` advances `≺ᵢ`.

There is no global `≺` over `Γ`. The bundle may record ordering facts holding in
every member, but it cannot require one order when ordering is itself an
alternative under analysis.

Advancement schema, within `Rᵢ`:

```
produced   producing event  ≺ᵢ  generated state
consumed   available state  ≺ᵢ  consuming event
succeeds   earlier event    ≺ᵢ  later event
derived    source state     ≺ᵢ  derived state
```

`≺ᵢ` may be established by trusted time, traversal position, the
generation-then-use relation, or another independently supported ordering record.
Per Step 0 R10 an ordering resting on a single principal's clock is not
independently supported and is marked accordingly.

Occurrence intervals, position indices, generation and invalidation times are
carried as before. Order remains partial within each representation; unordered
pairs are recorded as unordered and never inferred from record arrival, file
order, or investigator discovery order.

An instance whose ordering is unresolved does not enter `Rᵢ` unless `≺ᵢ` supplies
an evidence-compatible ordering for it; the alternatives become distinct members
of `Γ`.

## D12. Accepted representation

> A member representation is **accepted** when its material graph is finite and
> acyclic, which follows because every path-bearing relation advances `≺ᵢ` and
> `≺ᵢ` is a strict partial order.

Well-formedness, **per member representation**:

```
WF-1ᵢ  every path-bearing relation instance in Gᵢ advances ≺ᵢ
WF-2   every event occurrence belongs to exactly one traversal occurrence of Rᵢ
WF-3   succeeds instances lie within one traversal occurrence and agree with position index
WF-4   every relation instance satisfies its endpoint sort schema
WF-5ᵢ  occurrence intervals are consistent with ≺ᵢ wherever both bounds are resolved
WF-6   every unresolved relation instance satisfies D14.1
WF-7   every excluded relation is absent from Gᵢ and present in the evidence record
WF-8ᵢ  every established precedes relation in Rᵢ is consistent with ≺ᵢ
WF-9   Γ satisfies the coverage rule of 2.5
```

WF-1, WF-5 and WF-8 are indexed. WF-9 is new and is a bundle-level condition
rather than a graph-level one.

## D13. Material paths and ancestry

> A **material path** is a directed sequence of path-bearing relation instances
> whose endpoint sorts satisfy the relation schema and **which all belong to one
> member representation.**

> An ancestor path is a material path. Principal-layer relations do not create
> material ancestry.

**Authority ancestry does not exist in Block 1.** `attributed` runs from an
occurrence to a principal record and is not a downward grant. Block 1 has a
**principal-attribution chain**, descriptive only. Block 2 defines authority
source, grant, delegation, termination, accountability attribution and
accountability termination.

A path is **unresolved** if any instance on it is unresolved and **degraded** if
any instance is `derived`. Both are recorded per path and per representation.

## D14. Relation evidential status

```
corroborated  established and supported outside the unilateral control of any
              principal the relation would benefit
asserted      established only by interested or unilateral evidence
unresolved    specifically identified, admissible, not established
excluded      a finding, retained in the evidence record, absent from every Gᵢ
```

### D14.1 Unresolved-relation admission

> An unresolved relation is admitted only when evidence identifies its endpoint
> occurrences, its relation type, its incident interval, and a bounded
> missing-record or observation condition under which the relation remains
> evidence-compatible and result-relevant.
>
> Bare possibility, theoretical reachability, shared timing, or common principal
> attribution does not create an unresolved relation.

**Provisional interface, not a burden rule.** The admission record identifies the
**proponent** and the **result the proposed relation would support**. Allocation
and discharge of the formal burden are governed by Blocks 3 and 4, per D25 and
D26. A relation may support a party on one finding and harm the same party on
another, so Block 1 records provenance and result relevance without fixing
allocation.

### D14.2 Representation assignment

Every unresolved relation instance is assigned to the representations in which it
may occur, under the widened scope of 2.4. Mutually exclusive instances never
co-occur in one representation. **Material paths are evaluated within one member
representation; instances from mutually exclusive representations are never
combined into a path.**

**Block 1 does not decide how candidacy quantifies over `Γ`.** Whether a path in
at least one accepted representation suffices for possible candidacy, and what
factual ancestry requires, is Block 2's.

## D15. Convergence, composition, multiplicity

**Convergence**: an event occurrence with two or more `consumed` instances within
one representation.

**Composition locus**: a convergence at which an alleged mechanism is claimed to
compose. A claim about a convergence, not a structural feature.

**Multiplicity**: preserved by distinct occurrences and distinct relation
instances. Digest equality never merges occurrences.

### D15.1 Unknown-locus admission

```
1  identified component state occurrences, or bounded component classes
2  evidence the components could reach a common receiving interface within the
   incident boundary
3  a declared mechanism or composition rule
4  relevance to the selected consequence
5  a bounded reason the exact locus remains unknown
```

> Bare possibility of hidden composition does not mark any path unresolved.

Admitted, the locus is `unresolved` against the identified traversal set, within
the representations where the claim is compatible. It never defaults to the
nearest convergence.

## D16. Consequence designation

> The selected consequence is a **designation over an existing occurrence**, not a
> node class.

Eligible: an event occurrence; a state occurrence; or an ordered pair of state
occurrences constituting a state transition.

### D16.1 State-transition eligibility

> Two state occurrences representing the same governed object or declared
> continuity class, an evidenced ordering, and a path or transition record
> relating pre-state to post-state.

### D16.2 Class justification

The selection record justifies why the designated occurrence represents the
declared consequence class. Presence in a graph is not eligibility.

### D16.3 Designation across the bundle **[REPAIRED]**

Representations may differ on occurrence identity, state continuity, traversal
partition, or whether a proposed occurrence exists at all — and one may
affirmatively establish that it did **not** occur.

Four representation-specific designation states:

```
designated   occurrence present with the required identity
mapped       equivalent occurrence under the declared continuity class
unresolved   identity or continuity not established
excluded     evidence establishes the designated occurrence did not occur
```

`excluded` was missing. A representation carrying independently supported records
that the balance-change transition did not occur is not *unresolved* about it; it
is incompatible with that consequence selection, and collapsing the two would
convert positive contrary evidence into an absence of evidence — the inverse of
the error Step 0 R4 corrected at the output.

> A consequence selection applies across `Γ` only when every retained member
> representation is `designated`, `mapped`, or `unresolved`.
>
> **Where any retained representation is `excluded`, there is no single common
> consequence designation across `Γ`.** The analysis must either **branch by
> consequence-selection hypothesis**, carrying one bundle per hypothesis, or
> **report the consequence selection itself as representation-sensitive and
> withhold a pooled candidate result.**
>
> **An `excluded` designation is never weakened to `unresolved` in order to keep
> one bundle.**

Where representations disagree without any `excluded`, the selection record
carries a **representation-specific designation map** and the result is sensitive
to that disagreement, reported under D17 field 8.

## D17. Consequence-selection record

```
1  selected event occurrence, state occurrence, or state-transition designation
2  temporal and system boundary
3  consequence class
4  selecting authority
5  evidence supporting designation identity, occurrence identity, and required
   state continuity
6  relation to immediate and downstream consequences
7  unresolved alternatives
8  sensitivity of MICRM results to alternative consequence selections,
   representation-specific designation states, and retained member
   representations
```

Field 5 is corrected: it read *evidence supporting event identity*, which no
longer covered the state occurrence and state-transition designations D16 admits.

Fields 1 through 6 are inputs. Field 7 is an input the selector owes. **Field 8 is
an output written back after evaluation.** It is broadened here: it previously
named only *the candidate set*, which Block 2 has not yet defined, and it now
covers alternative selections, representation-specific designation states, and
retained representations. Block 2 populates the candidate-set component of that
broader result.

MICRM does not determine which consequence governs an investigation. It evaluates
a declared selection and reports sensitivity where alternative evidence-compatible
selections, or evidence-compatible representations, change the result.

## 7. Standing decisions

`derived` retained as degraded lineage: satisfies D14.1; preserves lineage without
identifying the missing transformation; leaves transformation attribution
unresolved; never by itself establishes a seam, attachment, propagation cut or
structural exclusion; carries a replacement obligation. It may support upstream
candidacy. **It cannot exonerate an intermediary or prove the absence of another
principal.**

`succeeds` intra-traversal only, `precedes` non-path for cross-traversal ordering,
traversal-occurrence identity in this block, no primitive seam relation,
`excluded` absent from every accepted graph.

## 8. What Block 1 does not settle

- **5.7** open, returned by Step 0 R7. Block 3.
- **5.1** needs D8 and the root ontology. Block 1 says only that a material path
  through an occurrence attributed to no principal record is still a material
  path.
- **5.9** needs D29. The multigraph, 2.4 and D14.2 supply the preconditions, not
  the rule.
- **Burden allocation**: Blocks 3 and 4, per D14.1's provisional interface.
- **How candidacy quantifies over `Γ`**: Block 2.

## 9. Acceptance

Markers per the tooling grammar adopted across the chapter: stress-case
identifiers collide with section numbering, so no checker may infer a disposition
from a bare `5.n`.

```
STRESS-CASE::5.n
DISPOSITION::PASS | OPEN | DEFERRED
```


### 5.2 Cyclic feedback, A → B → A → C

```
STRESS-CASE::5.2
DISPOSITION::PASS
```

From D9, D9.1, D11, D12, D13. The second A is a distinct occurrence A₂, and
A₁ → B₁ → A₂ → C₁ is accepted in `Rᵢ` because every path-bearing instance
advances `≺ᵢ`, which is irreflexive and transitive.

Finitely many occurrences, so finitely many finite paths. No deduplication rule;
paths are node-simple as a consequence of acyclicity while repeated acts and
messages remain distinct occurrences. Whether A₁ and A₂ share a traversal
occurrence is D9.1's, and alternative partitions are distinct members of `Γ`.

**Disposition: PASS.** The `≺ᵢ` indexing is a scope repair, not a reversal.

### 5.10 Unknown composition locus

```
STRESS-CASE::5.10
DISPOSITION::PASS
```

From D9, D14.1, D14.2, D15, D15.1, D16.3, and 2.5.

- **Admissible when?** Only on D15.1's five conditions.
- **Once admitted?** Locus `unresolved` against the identified traversal set,
  within the representations where compatible. Paths remain and are marked
  **within a single representation**.
- **Can a favourable bundle be assembled by omission?** No, per 2.5 and WF-9. An
  omitted bounded result-changing family is a residual representation dark surface
  and prevents closure of the dependent result.
- **Does the designation hold across `Γ`?** Only where every retained
  representation is `designated`, `mapped` or `unresolved`. If any is `excluded`,
  the analysis branches by consequence hypothesis or withholds a pooled result,
  per D16.3, and never weakens `excluded` to `unresolved` to preserve one bundle.
- **Unresolved or defeated?** Unresolved and specifically *unsupported*, per Step
  0 R4.

```
5.10 graph-level disposition:      PASS
5.10 final candidate disposition:  DEFERRED TO BLOCK 2
```

## 10. Repair checklist, this generation

```
1  conflicting evidence separated from compatible graph instances   done, D9, 2.5A
2  excluded added to representation-specific designation            done, D16.3
3  branch or withhold when a retained representation excludes       done, D16.3
4  D17 field 8 broadened beyond the candidate set                   done, D17
5  circular coverage wording replaced by three populations          done, 2.5
```

Carried forward unchanged from the third generation: per-representation `≺ᵢ`,
bundle and member-representation identity records, widened representation
assignment, principal-layer separation, and the provisional burden interface.

---

*MICRM Formal Semantics block 1, closeout repair | Two sections of one file, nine apart, and neither read the other*
