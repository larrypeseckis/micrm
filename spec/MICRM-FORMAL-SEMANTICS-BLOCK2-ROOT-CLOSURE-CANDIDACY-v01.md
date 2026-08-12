```
ARTIFACT:         MICRM-FORMAL-SEMANTICS-BLOCK2-ROOT-CLOSURE-CANDIDACY-v01.md
FILE-THIS-AS:     corpus/declarations/
AUTHORED-UNDER:   lane_tooling
INTENDED-REGIME:  declaration
STATUS:           DRAFT, PROVENANCE GENERATION
SCOPE:            STEP 1 BLOCK 2, DEFINITIONS D1-D8, AUTHORITY PATHS, CLOSURE, CANDIDACY
```

# MICRM FORMAL SEMANTICS — BLOCK 2: ROOT, CLOSURE, CANDIDACY

New generation, not a supersession. It replaces
`sha256 3a2ffc925eca4177217c3167c52966a5b8ad5f1da3a3fb8b2365f69260012a85`.

**Provenance-only generation.** No semantic change. The defect-class-1 and
defect-class-2 passes found no repair indicated inside this block; it is
regenerated so the chain points at the repaired Block 1.
Self-contained: every normative definition in scope is reproduced in full.

```
$ TZ='America/Denver' date '+%Y-%m-%d %H:%M:%S %Z'
2026-08-07 23:09:27 MDT
```

Inherits Block 1 at `3b850a77...` (C1 representation-construction repair) and
Step 0 terminology at `f82ae8ff...`.
Transposition source: register `dee784bb` clause 29, re-read for the prior draft.

## 0. The deferral was over-deferential, and it stranded two cases

Block 2 §8 recorded 5.4 and 5.5 as needing *the contribution-class and evidence
rules*. Neither does.

- **5.4** asks whether the candidate set changes because a legal boundary changed.
  That is decided by D5's functional-boundary rule and D7 F-1 and F-2, all of which
  were in Block 2 when the deferral was written.
- **5.5** asks whether a shell satisfies the first invariant. That is decided by
  D7 F-3, §4.1(c) and §4.3's matrix. Block 4's D30 is needed only to qualify the
  *support* of the F-3 finding, which is an evidentiary dependency, not ownership.

The cost was not the delay. **Block 4 then recorded that Block 2 had taken them**,
so the two artifacts disagreed and neither held a disposition. A deferral written
more broadly than the evidence required created a seam, and the next artifact
filled the seam with an assumption.

Retained for the record: the enumeration over consumers of `S` that missed a
consumer of its precondition; the blocker wired into one consumer; the profile
comprehension deriving what §5.0 forbade; and the earlier candidacy, closure and
seam defects.

## 0.1 Acceptance markers **[TOOLING GRAMMAR]**

Stress-case identifiers collide with section numbering — `§5.4 Robustness
metadata` against stress case 5.4 — and that collision produced a false positive
and a false negative in one consolidated scan.

> Every acceptance derivation carries an unambiguous machine-readable marker:
>
> ```
> STRESS-CASE::5.n
> DISPOSITION::PASS | OPEN | DEFERRED
> ```
>
> **No acceptance checker may infer a disposition from a bare `5.n` occurrence.**
> This is control-plane syntax, not paper-facing.

## 1. The acceptance rule

> No principal enters the candidate set merely because it exists in the principal
> layer, supplied authority, delegated authority, or shares an institutional
> identity with a material-path participant. Candidacy is derived from a Block 1
> material path **and** the Block 2 closure relation, **within one member
> representation**.

## 2. Principal ontology, D1 through D8

### D1. Accountable principal **[transposed, 29.1 and 29.3]**

> A **principal record** is evidence identifying a person, legal entity,
> institution, defined collective, or other asserted principal at the resolution
> the incident requires.

It may rest on identity, presence, liveness, credential, device, organisational or
registry evidence. **It does not by itself establish action authorisation,
delegation continuity, actuation, authorship, or accountability.**

> An **accountability-bearing principal** is the principal to which the
> accountability path is structurally assigned for the selected traversal or
> consequence under the applicable frame and overlays.

MICRM identifies the termination structure. The legal or regulatory basis for
bearing accountability is an overlay question.

### D2. Closure **[transposed and renamed, 29.4]**

```
STEP0-RULING::R2
APPLICATION::APPLIED
```

> **Authority-accountability closure** is a structural finding that, for one
> traversal occurrence within one member representation, the authority path and
> the accountability path terminate at the **same identified principal** at the
> incident's selected resolution.

> A **closure principal** is a principal record for which closure is
> `ESTABLISHED` per §4.

Closure is a relation, not an endpoint. A principal is not a closure principal
because an identity is present at one end of a chain; the relation holds among
principal identity, authority termination, accountability termination, and
same-principal continuity.

### D3. Assignment authority **[adapted, 29.2 and 98B]**

> An **authority source** is the principal or authority-bearing structure from
> which the relevant permission, delegation, mandate or jurisdiction descends for
> the selected traversal.

> **Assignment authority** is the authority under which a principal record is
> recognised as accountability-bearing for the selected frame.

Identifying an authority source does not establish that the action remained
within granted scope, nor that the source bears the consequence.

> Where the assigning authority cannot be named, closure status is `UNRESOLVED`
> with reason code `FRAME_UNRESOLVED`. **`frame-unresolved` is not a status.** The
> prior generation left it as an orphan term outside §4's vocabulary; the state
> set stays closed and the reason is carried alongside it.

### D4. Continuity **[transposed, 29.6]**

> A **principal-continuity record** preserves principal identity, authority
> scope, delegation rights, time bounds, revocation state, jurisdiction,
> representations, and seam transformations sufficient to evaluate whether a
> closure relation remained intact across the material graph.

> **Endpoint identity equality is insufficient where authority scope, principal
> capacity, or accountability assignment changed between the endpoints.**

### D5. Granularity **[adapted]**

```
STEP0-RULING::R9
APPLICATION::APPLIED
```

> The MICRM unit is the **functional** principal boundary. Legal entity boundaries
> are overlay input, recorded and carried, never the core test.

Where they disagree, both are recorded and the finding is **boundary-sensitive**.
Per Step 0 R9, entity separateness and veil doctrine sit in related work and are
consumed by overlays.

### D6. Shared and nested principals **[adapted]**

> Principals **share** a boundary when the same authority exercise and
> accountability assignment terminate at more than one identified principal
> without a resolving continuity record.
>
> A principal is **nested** within another when its authority derives from, and
> its accountability terminates through, the other under a recorded continuity
> relation.

Sharing does not distribute candidacy; nesting does not aggregate it upward. Each
principal is evaluated separately under §§4 and 5; §1 states the
anti-manufacture rule those sections implement. Plural termination is executable
through the endpoint sets in §4.2.

### D7. Fragmentation, consolidation, shell sinks **[F-3 REPAIRED]**

```
F-1  fragmentation   splitting a functional boundary across principal records does
                     not remove closure if authority exercise and accountability
                     assignment still terminate together across the fragments;
                     the fragments are evaluated as a shared boundary under D6
F-2  consolidation   merging principal records does not create closure where
                     continuity per D4 is not established across the merge
F-3  shell sink      split by evidential direction:
                     (a) evidence establishes the principal cannot be a valid
                         authority or accountability termination under the
                         declared frame            -> MISMATCH per §4.2; §4.3 decides
                                                      whether it becomes FAILED
                     (b) required termination or capacity evidence is absent or
                         incomplete                -> closure UNRESOLVED
```

The anti-gaming objective survives intact. **A shell cannot become an established
closure principal because records are missing**, since `ESTABLISHED` requires a
positive `MATCH`. Missing records simply do not become positive proof that
closure fails.

### D8. Unattributed intermediary **[adapted, 29.5]**

> **Authority traceability** is the ability to reconstruct a path from a selected
> action or traversal to an asserted authority source. It is evidence about
> lineage, **not a closure finding**, and a traceable chain may be orphaned where
> the accountability path terminates elsewhere or nowhere.

> An **unattributed intermediary** is an event or state occurrence with no
> principal record attributed to it within a member representation.

## 3. The two paths **[REPAIRED]**

Six constructs, with roles made exact. The prior generation defined endpoints
whose path construction did not exist.

```
A1  authority-source endpoint         an authority-bearing structure admitted as a
                                      source under D3
A2  authority grant                   principal -> principal, scoped
A3  authority delegation              principal -> principal, scoped, bounded by A2
A4  authority-path termination        the result of tracing A2 and A3 to an
                                      admitted A1 source endpoint

A5  accountability attribution        occurrence, traversal occurrence, or
                                      principal -> principal, under the declared
                                      frame
A6  accountability-path termination   the result of tracing A5 to its terminal
                                      principal
```

A5 now admits a **principal-to-principal** form, which the prior generation
omitted. Without it there was no chain for A6 to terminate.

### 3.1 Non-principal authority sources **[NEW]**

D3 admits a source that is a principal **or an authority-bearing structure**, so
A4 can reach a statute, mandate, or policy authority while `T_A` is a set of
principals. That case had no rule.

> A **non-principal authority-source endpoint** may establish authority
> provenance, but it **cannot itself satisfy D2's same-identified-principal
> test**. A4 yields an authority-termination principal only where the source is a
> principal record, or an **evidenced source-to-principal assignment** exists.
> Otherwise authority termination for closure is `UNRESOLVED`, reason code
> `SOURCE_NOT_PRINCIPAL`.

No authority-bearing object is forced into a fictional principal record to make
the type check.

### 3.2 Chain admissibility and termination **[NEW]**

*Trace to the endpoint* is undefined under branching or cycles, and A5's new
principal-to-principal form means accountability chains can branch and cycle too.

> An **admitted chain** is finite, representation-compatible, in-scope, and
> relation-consistent. A **terminal principal** has no further admissible relation
> in the evaluation direction. **All admissible terminal principals populate `T_A`
> or `T_C`.**

> A **cycle with no terminal endpoint**, an **unresolved branch capable of
> changing the endpoint set**, or an **unresolved source-to-principal mapping**
> makes the affected termination `UNRESOLVED`, with reason codes
> `CHAIN_CYCLE`, `BRANCH_UNRESOLVED`, `SOURCE_NOT_PRINCIPAL` respectively.

> An A2 or A3 instance participates in an admitted authority chain only where its
> **scope, time bounds, and revocation state are compatible with the selected
> traversal occurrence.** D4 records those facts; this is where they bind.

### 3.3 Direction

> **Grant direction and evaluation direction are different things.** Authority
> flows downward operationally, from source through grant and delegation to the
> acting principal. The investigator traces it **upward**, from the acting
> principal to the admitted source endpoint. A4 is the upstream endpoint reached
> by upward tracing of downward-flowing grants.

The prior generation said A1–A4 "run downward" and then defined A4 as the highest
grant in a chain, which described the tracing result as though it were the flow.

### 3.4 None of it is material

> **No relation in A1 through A6 is path-bearing. None creates material
> ancestry.**

Each instance carries Block 1 D14 evidential status and belongs to member
representations per Block 1 §2.4, so principal-layer facts vary by representation
exactly as material facts do.

## 4. Closure evaluation **[REPAIRED]**

### 4.1 Closure subjects **[NEW ADMISSION DOMAIN]**

`closure(P, τ, Rᵢ)` was evaluable for any principal, and `UNRESOLVED` covers
missing termination evidence, so an arbitrary principal `Z` could be nominated,
found unestablished, and returned as an `UNRESOLVED-CLOSURE CANDIDATE` over any
materially ancestral traversal. Traversal-first candidacy closed one amplification
route and opened this one.

The principal-layer analogue of Block 1 D14.1:

> `P` is a **closure subject** for traversal occurrence `τ` in `Rᵢ` only when
> evidence
>
> **(a)** places `P` in `T_A(Rᵢ, τ)` or `T_C(Rᵢ, τ)`; or
>
> **(b)** identifies a **bounded admitted** unresolved authority or accountability
> chain, or source-to-principal mapping, **capable of placing `P` in one of those
> endpoint sets**; or
>
> **(c)** identifies `P` as a **proposed termination** for `τ` in an admitted,
> result-relevant authority or accountability record, **and** evidence establishes
> that `P` **cannot validly occupy the claimed termination role**.
>
> **Bare principal existence, institutional affiliation, theoretical authority,
> generic organisational membership, or bare nomination does not make `P` a
> closure subject.**

Limb (c) is what makes F-3(a) reachable: a shell nominated as a termination and
affirmatively shown incapable of the role enters the domain **for the purpose of
recording that finding**, and nothing weaker does.

Limb (b) no longer mentions continuity. **An unresolved continuity question
cannot place `P` in an endpoint set**, because continuity is evaluated after
membership; once `P` is in either set, limb (a) already admits it.

> **`closure(P, τ, Rᵢ)` is evaluated only for admitted closure subjects.** A
> principal that is not a closure subject for `τ` takes no status over `τ`; it is
> not `UNRESOLVED` over it.

```
WF-P1  every principal for which a closure status is reported is an admitted
       closure subject for that traversal occurrence in that representation
```

### 4.2 Termination endpoint sets and per-principal predicates **[MADE EXACT]**

Plural endpoint sets:

```
T_A(Rᵢ, τ)   admitted authority-termination principals
T_C(Rᵢ, τ)   admitted accountability-termination principals
```

The prior wording described `MISMATCH` globally as *resolved terminations identify
different principals*, which can be read as making the whole structure mismatched
whenever the sets differ. With `T_A = {P, Q}` and `T_C = {P, R}`, `P` must be
capable of `MATCH` while `Q` and `R` are not. The predicates are per principal:

```
MATCH(P)        P ∈ T_A ∩ T_C
                AND continuity(P) satisfied per D4

MISMATCH(P)     endpoint membership is resolved
                AND P lies in exactly one of T_A or T_C
                OR  P lies in both and continuity(P) is broken
                OR  P is an admitted proposed termination under §4.1(c) whose
                    validity is affirmatively excluded under D7 F-3(a)

UNRESOLVED(P)   membership of P in either required endpoint set, or
                continuity(P), remains unresolved
```

### 4.3 Two dimensions **[CL-4 MOVED TO STATUS]**

Independence leaves the structural predicate and becomes support status. Your
first reason is the decisive one: CL-4 covered evidence for the terminations and
not for continuity, though continuity is equally load-bearing, and Block 1 already
separates a structural fact from whether its evidence is corroborated.

```
closure relation    MATCH       MATCH(P) under §4.2
                    MISMATCH    MISMATCH(P) under §4.2
                    UNRESOLVED  UNRESOLVED(P) under §4.2

evidentiary support CORROBORATED  all result-relevant closure evidence is
                                  supported outside the unilateral control of any
                                  principal whose result it benefits
                    ASSERTED      supported only by interested or unilateral
                                  evidence
                    UNRESOLVED    required support absent or incomplete
```

**The relation is defined once, in §4.2, and §4.3 only composes it with support.**
The prior generation restated it here as *resolved terminations identify different
principals*, which reintroduced the global reading §4.2 had just removed: with
`T_A = {P,Q}` and `T_C = {P,R}` the sets do identify different principals, though
`MATCH(P)` must hold. F-3(a) likewise now has exactly one formal home, in §4.2.

**Independence applies to all result-relevant closure evidence** — identity,
both terminations, and continuity — and **relative to any principal whose result
the evidence benefits**, not only to P's own unilateral control. The prior
formulation missed the case of evidence controlled by a different principal with
a stake in P's status.

**The tuple is primary.** The derived outcome is defined over the whole product,
because the prior generation left `MISMATCH + ASSERTED` undefined:

| relation | support | derived status |
|---|---|---|
| MATCH | CORROBORATED | `ESTABLISHED` |
| MATCH | ASSERTED | `ASSERTED-CLOSURE` |
| MATCH | UNRESOLVED | `UNRESOLVED` |
| MISMATCH | CORROBORATED | `FAILED` |
| MISMATCH | ASSERTED | `ASSERTED-MISMATCH` |
| MISMATCH | UNRESOLVED | `UNRESOLVED` |
| UNRESOLVED | any | `UNRESOLVED` |

`ASSERTED-MISMATCH` is the missing cell and it matters in one direction: an
interested principal can unilaterally submit evidence that the two paths
terminate at different principals. Treating that as `FAILED` would let unilateral
evidence manufacture a closure failure, which is F-3's repaired evidential
direction reappearing one layer later.

> **`ASSERTED-MISMATCH` does not produce `CLOSURE FAILURE`.** It has not
> established failure independently. It stays in the unresolved lane for
> candidacy, carrying the asserted mismatch as its reason.

> A **closure principal** is a principal with `ESTABLISHED` closure.
> `ASSERTED-CLOSURE` is not closure; it is the structurally indicated relation
> with its support stated, which is what lets the model say *indicated but only by
> interested evidence* without either pretending or discarding.

### 4.4 Scope

Closure is asserted only for a `(principal, traversal occurrence, representation)`
triple, never for a principal simpliciter. A principal may close over one
traversal and not another, and in `R₁` and not `R₂`.

## 5. Candidacy **[REBUILT TRAVERSAL-FIRST]**

### 5.0 Material consequence target **[NEW, CROSS-BLOCK TYPE FIX]**

Block 1 D16 permits three designation forms and this block ended its ancestry
definition at *the designated consequence occurrence*, which a state transition is
not. Block 2 cannot silently narrow D16 back to one occurrence.

```
event designation        -> that event occurrence
state designation        -> that state occurrence
state-transition         -> the post-state occurrence under the admitted
                            pre/post transition record
```

> The **material consequence target** is derived as above. Material ancestry is
> evaluated against the target, while **the selected consequence identity remains
> the full designation**, including the entire pre/post pair for a transition.
> D17 field 5's transition-continuity evidence governs the pair; the target
> governs ancestry only.

**Unresolved and mapped designations.** Block 1 D16.3 permits a retained
representation whose designation state is `unresolved`, and §5.0 as first written
assumed a usable target always exists. Without one, no traversal can be shown
materially ancestral, `S(P, Rᵢ)` is empty, and the bundle rule returns `NOT A
CANDIDATE` — turning unresolved consequence identity into an absence of ancestry,
which is the Step 0 R4 inversion at a third site.

> Where the Block 1 designation state in `Rᵢ` is **`unresolved`**, the material
> consequence target is **itself unresolved in that representation**. **Failure to
> establish a target does not produce an empty status profile and does not
> produce `NOT A CANDIDATE`.** The dependent candidacy result is **withheld or
> marked consequence-target-sensitive** until every evidence-compatible target
> alternative yields an invariant result.
>
> Where the designation state is **`mapped`**, that representation's target is the
> **mapped occurrence**. Where it is **`excluded`**, Block 1 D16.3's
> branch-or-withhold rule has already applied upstream and no target is derived
> here.

### 5.1 Materially ancestral traversal **[NEW ANCHOR]**

> A traversal occurrence `τ` is **materially ancestral** to the selected
> consequence in `Rᵢ` when a member event occurrence of `τ`, or a state occurrence
> evidenced as generated or established by `τ`, lies on a material path to the
> **material consequence target** of §5.0.

Candidacy is anchored on the traversal, not on principal attribution:

```
ESTABLISHED CANDIDATE(P, τ, Rᵢ)         materially_ancestral(τ, Rᵢ)
                                        AND closure(P, τ, Rᵢ) = ESTABLISHED

UNRESOLVED-CLOSURE CANDIDATE(P, τ, Rᵢ)  materially_ancestral(τ, Rᵢ)
                                        AND closure(P, τ, Rᵢ) ∈ {UNRESOLVED,
                                            ASSERTED-CLOSURE, ASSERTED-MISMATCH}

CLOSURE FAILURE(P, τ, Rᵢ)               materially_ancestral(τ, Rᵢ)
                                        AND closure(P, τ, Rᵢ) = FAILED

```

The table above assigns statuses **per traversal occurrence**. `NO CANDIDATE PATH`
is deliberately absent from it: it is not a per-traversal status but a
representation-level finding about the whole profile, derived in §5.3.2 after the
blocker check.

**The anti-manufacture rule still holds.** P does not become a candidate by
supplying authority: `τ` must first have real Block 1 material ancestry, and
closure then maps that traversal to P. Authority association still creates
nothing on its own, because with no materially ancestral traversal there is no
candidacy of any status.

The delegated case now resolves as intended: P is an `ESTABLISHED CANDIDATE` over
`τ` without labelling any occurrence, and Q's status follows Q's own closure over
the same traversal.

### 5.2 Attributed states without a traversal anchor **[RESOLVED BY 5.1]**

The prior generation said such a state keeps real material ancestry and
`UNRESOLVED` closure, and then the anchor rule mechanically returned `NO CANDIDATE
PATH`. Prose and state machine disagreed.

Under 5.1 the question changes shape. A state occurrence contributes to material
ancestry whether or not it can be traced to a generating traversal. Where **no**
generating traversal can be identified, there is no `τ` over which to evaluate
closure, so no principal takes a status **from that state alone** — the state is
recorded as a **generating-traversal dark surface** on a material path, per Step 0
R8, and the ancestry it carries remains available to any traversal identified
later.

> Where that dark surface is the **only** ancestral evidence bearing on `P`, it
> enters `B(P, Rᵢ)` as `GENERATING_TRAVERSAL_DARK_SURFACE` per §5.3, so an
> unresolved generating-traversal question is **withheld rather than converted
> into `NOT A CANDIDATE`.**

Attribution of a principal to an occurrence is **evidence about the traversal's
principal layer**. It informs A5 and the closure evaluation; it is no longer a
gate on candidacy.

### 5.3 Status profiles and aggregation **[PROFILE, NOT ONE STATUS]**

A principal may hold different statuses over different materially ancestral
traversals inside one representation — `ESTABLISHED CANDIDATE` over `τ₁` and
`CLOSURE FAILURE` over `τ₂`. That is legitimate, and the prior wording *the
per-representation statuses of P* invited a later reader to select one of several.

> A representation carries a **profile** for each principal, with two parts:
>
> ```
> profile(P, Rᵢ)  =  entries   S(P, Rᵢ)
>                    blockers  B(P, Rᵢ)
>
> S(P, Rᵢ) = { (τ, status(P, τ, Rᵢ)) : τ materially ancestral to the material
>              consequence target, P a closure subject for τ }
>
> B(P, Rᵢ) ⊆ { CONSEQUENCE_TARGET_UNRESOLVED,
>              GENERATING_TRAVERSAL_DARK_SURFACE,
>              REPRESENTATION_DARK_SURFACE }
> ```
>
> All bundle reporting operates over profiles. **There is no single status of `P`
> in `Rᵢ`.**

The blockers are what make the profile **evaluability-aware**, which prose alone
could not do. No placeholder traversal is manufactured; the reason the profile
could not be evaluated is carried instead of being collapsed into an empty set.

### 5.3.1 Propagation rule **[STATED ONCE]**

> **Every result that interprets an absence must consult `B`.** This covers both
> the absence of an `S` entry **and the absence of any antecedent required to
> construct one** — a material consequence target, an identified generating
> traversal, a materially ancestral traversal, or an evaluable closure relation.
> No such finding may be produced without first establishing that no live
> result-relevant blocker is capable of changing it.
>
> A blocker is **relevant to a given result** only where the unresolved fact could
> move the bundle out of the class that result asserts. A blocker capable only of
> producing a status already inside that class does not block it.

Findings governed by this rule in this block, enumerated over **both** classes:

```
consumes an S entry or its absence   NOT A CANDIDATE, CLOSURE FAILURE,
                                     robustness metadata (§5.4)
consumes the absence of an           NO CANDIDATE PATH (§5.3.2)
antecedent needed to build S
reports rather than interprets       §5.5 sensitivity
```

The prior generation enumerated only the first class, which is how
`NO CANDIDATE PATH` escaped. Any finding added later in either class inherits the
rule above.

### 5.3.2 `NO CANDIDATE PATH`, derived **[MOVED AND GATED]**

> ```
> NO CANDIDATE PATH(P, Rᵢ)
>     S(P, Rᵢ) = ∅
>     AND B(P, Rᵢ) contains no result-relevant blocker capable of producing a
>         candidacy entry for P
> ```

The prior definition was *no materially ancestral τ with an evaluable closure
relation*, which is satisfied whenever the target is unresolved or the generating
traversal is a dark surface. It produced a per-representation assertion that no
candidate path exists where the truth was that the question could not be
evaluated.

`NO CANDIDATE PATH` is now the local form of the same evaluability test the bundle
applies, so the two cannot disagree:

```
NOT A CANDIDATE(P)  iff  NO CANDIDATE PATH(P, Rᵢ) in every retained representation
```

The explicit `S`/`B` form below is retained as the normative statement; the line
above is its equivalent reading.

Bundle-level outcomes:

```
NOT A CANDIDATE(P)
    for every retained Rᵢ:
        S(P, Rᵢ) = ∅
        AND B(P, Rᵢ) contains no result-relevant blocker capable of producing a
            candidacy entry for P

CLOSURE FAILURE(P)
    some S(P, Rᵢ) contains a CLOSURE FAILURE entry
    AND no S(P, Rⱼ) contains ESTABLISHED CANDIDATE or UNRESOLVED-CLOSURE CANDIDATE
    AND no B(P, R_k) contains a result-relevant blocker capable of producing
        either candidate status
```

> **`NOT A CANDIDATE` requires an evaluable empty profile.** An empty `S` under a
> live blocker is **withheld**, not resolved as non-candidacy.
>
> **`CLOSURE FAILURE` requires an evaluable failure-only bundle.** A blocker
> capable only of producing another closure failure does not prevent the result;
> the question is whether the unresolved fact could move the bundle out of the
> failure-only class.

The qualifier **capable of producing a candidacy entry for `P`** is load-bearing
in the other direction: an unrelated generating-traversal dark surface elsewhere
in the incident must not block a valid non-candidacy result for every principal.
A blocker counts only where the unresolved fact could place `P` on a materially
ancestral traversal.

> **`CLOSURE FAILURE` never aggregates to `NOT A CANDIDATE`.** `NOT A CANDIDATE`
> is reserved for an evaluable empty profile, and later for a Block 3 exclusion.

Differences across representations are reported, never resolved by majority,
count, or preference. Block 1's coverage rule applies: a residual representation
dark surface bearing on any entry prevents closure of the dependent result.

### 5.4 Robustness metadata **[TWO PROPOSITIONS, NAMED]**

Necessary and possible attach to a stated proposition, because the prior wording
left the quantifier undefined over profiles:

```
TRAVERSAL-INDEXED   for a traversal identity or declared continuity class t:
                    NECESSARY(P, t, status)  the entry holds in every retained
                                             representation containing t
                    POSSIBLE(P, t, status)   it holds in at least one, not all

PRINCIPAL-LEVEL     for the existential claim:
                    NECESSARY(P, status)     S(P, Rᵢ) contains at least one entry
                                             with that status in every retained
                                             representation
                    POSSIBLE(P, status)      in at least one, not all
```

**Both are subject to §5.3.1.** `POSSIBLE` asserts that a status is absent from
some representation, which is an interpretation of an absent entry:

> `NECESSARY` and `POSSIBLE` are evaluated only where **no live blocker can change
> the truth of the stated robustness proposition**. Otherwise the result is
> **`ROBUSTNESS UNRESOLVED`** and is withheld rather than reported.

With `ESTABLISHED CANDIDATE` in `R₁` and a live candidacy-capable blocker in `R₂`,
the prior formula returned `POSSIBLE = True`, which asserts the status does not
hold in `R₂`. It is not known to be absent there; `R₂` is unevaluable. Because
robustness is reporting-only this changes no candidacy result, and that is exactly
why it must not report *unknown* as *does not hold*.

These are different propositions and are reported separately, never merged under
one word.

> Necessary and possible carry **no normative or attachment consequence** under
> either reading. Block 3 determines attachment from its attachment predicate.

### 5.5 Candidate-set sensitivity, D17 field 8

```
per-representation status profile for each principal, with the traversal each
  entry attaches to
principals whose profile varies across representations, with the varying fact
principals whose profile varies under an alternative consequence selection
principals whose profile varies under an alternative traversal partition
all live result-relevant profile blockers, and for each, the MICRM result it is
  capable of changing
```

The blocker line **consumes the §5.3 mechanism rather than restating a list**, so
the three current codes and any added later cannot drift apart from it. The prior
version enumerated generating-traversal and representation dark surfaces by hand
and had already fallen out of step with `CONSEQUENCE_TARGET_UNRESOLVED`, which
§5.0 names and that list omitted.

## 6. Seam promotion **[CLOSURE SUBJECTS, NOT ATTRIBUTED ACTORS]**

Block 1 supplies the material seam: an adjacent produced-state-consumed segment
whose event occurrences attribute to different principal records. **That remains
the material fact and is unchanged.** Promotion is what changes.

> Let `τL` and `τR` be the traversal occurrences of the seam's left and right
> event occurrences. Form every representation-compatible pair
>
> ```
> (Pᵢ, Qⱼ)  where  Pᵢ ∈ closure_subjects(τL, Rᵢ)
>                  Qⱼ ∈ closure_subjects(τR, Rᵢ)
> ```
>
> **Pairs with identical principals are not cross-principal seams** and are
> discarded. Each remaining pair is promoted independently on each principal's
> closure over its own traversal occurrence.

Evaluated as an **ordered, exhaustive** rule, because the prior table was a set of
overlapping conditions with six pairs firing two rules at once:

```
if either side is FAILED
    -> no promotion for that pair; the closure-failure finding attaches to that
       endpoint, not to the seam

else if both sides are ESTABLISHED
    -> cross-closure-principal seam

else
    -> candidate cross-closure-principal seam, with each non-established side
       named and its status recorded, each being UNRESOLVED, ASSERTED-CLOSURE,
       or ASSERTED-MISMATCH
```

The three branches partition the twenty-five status pairs. No architectural
change; the states are now disjoint.

Pairing on closure subjects rather than attributed actors is the repair. Under the
prior rule, a seam between two delegated agents whose principals both close was
evaluated only as the agent pair and never promoted, while `(P, S)` — the actual
closure pair — was never formed.

Pairwise evaluation also prevents **one established principal from laundering an
unresolved co-attributed principal** at the same endpoint, which set-level
promotion would have permitted. Promotion is per representation and never merged.

## 7. Acceptance: stress case 5.1 **[REDERIVED]**

A material path runs A → O → B → consequence, where O has no principal record
attributed to it in `Rᵢ`.

Rederived under §5.1 rather than patched, because the previous derivation made a
principal's status depend on an occurrence carrying that principal's label.

- **Does upstream material ancestry survive?** Yes. Block 1 D13 makes a material
  path a sequence of path-bearing instances; attribution is principal-layer and is
  not path-bearing.
- **Does the intermediary interrupt candidacy?** No, and the stronger statement is
  now available: **O's missing attribution cannot alter whether an upstream
  traversal is materially ancestral to the consequence, and therefore cannot alter
  the closure evaluation of principals over that traversal.** Candidacy never
  depended on A labelling an occurrence.
- **Can O be an accountability shield?** No. Interposing an unattributed
  occurrence removes no path, no traversal's material ancestry, and no closure
  finding. With D7 F-3, neither an unattributed occurrence nor a shell principal
  absorbs accountability.
- **What is reported for O?** An unattributed occurrence on a material path: a
  bounded region where the principal layer is unestablished, recorded and carried
  per Step 0 R8. If O also cannot be traced to a generating traversal, §5.2's
  generating-traversal dark surface applies.
- **When O's traversal has a principal whose closure is `FAILED` or
  `UNRESOLVED`?** The statuses of principals over other materially ancestral
  traversals are unchanged, and O's principal takes `CLOSURE FAILURE` or
  `UNRESOLVED-CLOSURE CANDIDATE` over its own traversal. A closure failure at O
  never converts into an exclusion upstream, and under §5.3 never aggregates into
  non-candidacy for O's principal.

**Disposition: PASS.**

## 8. What Block 2 does not settle

- **5.7**, open since Step 0 R7. Propagation cuts and Gate position: Block 3.
- **Attachment, propagation, exclusion**: Block 3. Candidacy is not attachment.
- **Burdens**, including whether an unresolved principal-layer relation carries
  the same admission burden Block 1 D14.1 imposes on material relations: Blocks 3
  and 4.
- **D29** across the principal layer, which now has the same precondition
  structure as the material layer.
- **5.3, 5.6, 5.9**: conditions touch D5, D6, D7 and §4.3; dispositions are Block
  4's, and were taken there.
- **5.4 and 5.5**: **disposed in §10 of this block.** The prior generation deferred
  them to rules they did not need.

## 9. Repair checklist, this generation

```
1  propagation rule widened to absent antecedents        done, §5.3.1
2  governed findings enumerated over both classes        done, §5.3.1
3  NO CANDIDATE PATH removed from the status table       done, §5.2
4  NO CANDIDATE PATH derived behind the blocker check    done, §5.3.2
```

Frozen: D1–D8; the two-path architecture; non-principal sources; chain branching
and cycles; closure-subject admission with limbs (a), (b), (c); F-3; plural
endpoint sets; per-principal `MATCH`/`MISMATCH`/`UNRESOLVED`; the seven-row
support matrix; traversal-first candidacy; the material consequence target; the
ordered seam partition; status profiles; the aggregate rules; and 5.1.

**Three verification classes this block exposed**, recorded for Block 3:

```
a reference resolving to the wrong existing section    no scanner catches it
a mechanism wired into one consumer, not its siblings  needs a reader
a search over consumers of a value, blind to consumers no scanner catches it
  of that value's precondition
```

Each needed someone asking what else should have changed. The third is the one I
built a search for and still missed, because the search was over the wrong set.

## 10. Acceptance: stress cases 5.4 and 5.5

### 10.1 Corporate-boundary gaming

```
STRESS-CASE::5.4
DISPOSITION::PASS
```

From D4, D5, D7 F-1 and F-2. **No contribution class is required**, because the
question is whether closure moves, not whether a class attaches.

> **A legal reorganisation alone does not change the candidate set.**
>
> Where the reorganised boundary leaves the functional authority exercise, the
> accountability termination, and the continuity relation unchanged, D5's
> functional-boundary rule and D7 F-1 preserve the same closure evaluation:
> splitting a functional boundary across principal records does not remove closure
> while authority and accountability still terminate together across the
> fragments, which D6 evaluates as a shared boundary.
>
> Where the reorganisation **does** change those functional facts, MICRM evaluates
> the changed facts. D7 F-2 prevents the converse move: merging principal records
> does not manufacture closure where D4 continuity is not established across the
> merge.
>
> **Corporate form is never itself dispositive**, in either direction.

Where the functional and legal boundaries disagree, D5 reports the finding as
**boundary-sensitive** and carries both, rather than choosing.

### 10.2 Shell or fake closure principal

```
STRESS-CASE::5.5
DISPOSITION::PASS
```

From D2, D7 F-3, §4.1(c) and §4.3.

> **A nominated shell does not satisfy authority-accountability closure merely
> because an entity exists at the nominal endpoint.** D2 makes closure a relation
> among identity, authority termination, accountability termination and
> continuity, not the presence of an identity at one end.
>
> Where evidence **affirmatively establishes** that the entity cannot validly
> occupy the authority or accountability termination role, D7 F-3(a) yields
> `MISMATCH`, and §4.3 returns `FAILED` with corroborated support and
> `ASSERTED-MISMATCH` without it.
>
> Where the necessary capacity or termination evidence is **absent or incomplete**,
> D7 F-3(b) yields `UNRESOLVED` — neither `FAILED` nor `ESTABLISHED`.
>
> **The shell cannot serve as an accountability sink** either way: it cannot become
> an established closure principal through missing records, because `ESTABLISHED`
> requires a positive `MATCH`; and where it fails, §5.3 reports `CLOSURE FAILURE`
> rather than converting it into non-candidacy for anyone upstream.

The §4.1(c) admission limb is what makes this reachable: a principal nominated as a
termination and affirmatively shown incapable of the role enters the evaluation
domain **for the purpose of recording that finding**, and bare nomination does not.

**Block 4 dependency, evidentiary only.** Whether the F-3(a) evidence qualifies as
`CORROBORATED[T]` is Block 4 D30's, under its beneficiary set, vector coverage and
basis rules. That decides which of `FAILED` and `ASSERTED-MISMATCH` applies. It
does not decide the semantics, which are here.

### 10.3 Markers for the disposition already in this block

```
STRESS-CASE::5.1
DISPOSITION::PASS
```

Derived in §7.


---

*MICRM Formal Semantics block 2, acceptance closeout | A deferral wider than the evidence required, and the next artifact filled the seam*
