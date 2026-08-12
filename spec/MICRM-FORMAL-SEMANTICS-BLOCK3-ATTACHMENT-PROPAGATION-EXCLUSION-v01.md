```
ARTIFACT:         MICRM-FORMAL-SEMANTICS-BLOCK3-ATTACHMENT-PROPAGATION-EXCLUSION-v01.md
FILE-THIS-AS:     corpus/declarations/
AUTHORED-UNDER:   lane_tooling
INTENDED-REGIME:  declaration
STATUS:           DRAFT, PROVENANCE GENERATION
SCOPE:            STEP 1 BLOCK 3, DEFINITIONS D18-D24, STRESS CASE 5.7
```

# MICRM FORMAL SEMANTICS — BLOCK 3: ATTACHMENT, PROPAGATION, EXCLUSION

New generation, not a supersession. It replaces
`sha256 8b2cb00d5bed939d3352594cc49d865b515679ed8c4fb1ad2463d8d9b768525c`.

**Provenance-only generation.** No semantic change. Neither defect-class pass
indicated a repair inside this block, and §5.2's attachment-locus coverage remains
the precedent Block 4's common coverage rule generalises.
Self-contained.

```
$ TZ='America/Denver' date '+%Y-%m-%d %H:%M:%S %Z'
2026-08-07 23:09:40 MDT
```

Inherits Block 1 `3b850a77...`, Block 2 `44b78035...`, Step 0 `f82ae8ff...`.

## 0. The edits no-opped and my check matched the defect report

Last generation I inserted R1 and R3 into this block, verified them, and reported
them applied. Neither landed. The anchor strings I replaced against did not exist
— the sections had been renumbered in earlier repair generations — so both
replacements silently matched nothing, and my verification grep returned true
**because §0 said the terms were missing.**

```
every occurrence of NESS / novus actus / Hart and Honoré / intervening cause in B3:
  line 29:  R1  NESS named once, in Block 2 beside closure; absent where ...
  line 31:  R3  no mention of intervening cause, novus actus, or Hart and Honoré
```

Two failures in one move. **A string replacement that matches nothing should not
be silent**, and a check for a ruling's application must not be satisfied by a
sentence stating the ruling was not applied. The second is the section-number
collision one layer up: lexical presence mistaken for disposition, in the checker
I had just repaired for exactly that.

## 0.1 Marker grammars **[TOOLING]**

```
STRESS-CASE::5.n            DISPOSITION::PASS | OPEN | DEFERRED
STEP0-RULING::Rn            APPLICATION::APPLIED | OPEN
```

> Both are control-plane syntax. **A marker is valid only adjacent to the
> substantive text it certifies**, never in a defect history. No checker may infer
> a disposition or an application from vocabulary presence.

R6 landed correctly last generation and is unchanged. R1 and R3 are applied below.

## 1. Inherited rules

```
absence rule    Block 2 §5.3.1, absent entries and absent antecedents
representation  every finding per member representation
evaluability    an unevaluable question is withheld, never a negative finding
```

## 2. Path domains **[NEW, DEFINED BEFORE USE]**

*Relevant path* was load-bearing in three sections and defined in none.

```
candidate path              a material path from a materially ancestral candidate
                            traversal of P to the material consequence target

propagation path for A      the downstream portion of a candidate path, from A's
                            attachment locus toward the material consequence target
```

The distinction is operative:

- **E4** operates over a **candidate path**: does P's class attach at all?
- **E2** operates over a **propagation path**: after an attachment instance exists.
- **Class-relative dominance** quantifies over the **propagation paths of the
  relevant attachment lineage**, not over arbitrary material paths.

That last line makes *a bypass incapable of carrying `c` does not defeat dominance
of `c`* precise instead of intuitive.

## 3. D19. Attachment instances **[IDENTITY REPAIRED]**

> An **attachment instance**
>
> ```
> A = attachment_instance(P, τ, c, locus, Rᵢ)
> ```
>
> **identifies the class-relative attachment question** for candidate `P`'s
> materially ancestral traversal `τ` and declared class `c` at that locus in `Rᵢ`.
> **`A` is the subject of evaluation, not a positive finding.** Its answer is
> `attachment_relation(A)` per §3.1.

The prior wording defined `A` as *the finding that `c` is instantiated*, which made
`attachment_relation(A) = ABSENT` read as *absent(the finding that c is present)*.

The locus is **in the tuple**. Two loci on one traversal are two instances and can
carry different states without contradiction. Each instance has a stable
identifier used by propagation, cuts, and the record.

`P` is an `ESTABLISHED CANDIDATE` or `UNRESOLVED-CLOSURE CANDIDATE` over `τ` per
Block 2. Not a closure principal — the prior generation's typing said otherwise
while admitting unresolved-closure candidates.

### 3.0 Attachment is not NESS causation *(Step 0 R1)*

```
STEP0-RULING::R1
APPLICATION::APPLIED
```

> **NESS is a factual-causation test.** Wright's necessary element of a sufficient
> set asks whether a condition was necessary to a set of antecedent conditions
> sufficient for the result.
>
> **MICRM attachment and `STRUCTURALLY NON-EXCLUDED` do not establish NESS
> causation.** They establish the narrower structural predicates defined here: that
> a declared class was instantiated at an identified locus by a candidate's
> traversal, and that a corroborated class-bearing lineage reached the material
> consequence target without qualifying severance.
>
> Wright's own separation of the causation issue from the ultimate liability issue
> aligns with MICRM's structural-versus-overlay boundary. MICRM makes the weaker
> claim on the causal side and stops at the boundary on the normative side.

### 3.1 Two dimensions **[per your CL-4 precedent]**

Independence enters as support, not as a fourth condition on the relation:

```
attachment relation   PRESENT     evidence establishes c at the locus
                      ABSENT      evidence affirmatively establishes c is not
                                  carried at the locus
                      UNRESOLVED  evidence insufficient, or a class-bearing
                                  antecedent is blocked per the absence rule

support               CORROBORATED  outside the unilateral control of any principal
                                    whose result the finding benefits
                      ASSERTED      interested or unilateral evidence only
                      UNRESOLVED    required support absent or incomplete
```

Derived, and applying **in both directions** so interested evidence cannot
manufacture either result:

```
ABSENT + CORROBORATED    may discharge E4 at that locus
ABSENT + ASSERTED        asserted attachment-exclusion finding; does NOT discharge
PRESENT + CORROBORATED   supports a positive path finding
PRESENT + ASSERTED       asserted attachment; does NOT establish PATH NON-EXCLUDED
either + UNRESOLVED      unresolved
```

**Block 4 D30 supplies the independence test.** Block 3 states the interface and
refuses to let a unilateral finding of either sign carry a structural result.

> **General form.** Every predicate whose truth can discharge or establish a
> structural result carries the `CORROBORATED` / `ASSERTED` / `UNRESOLVED` support
> dimension, evaluated relative to any principal whose result it benefits. In this
> block that is: the attachment relation, `REACHES TARGET`, cut evidence via C3,
> and `ATTACHMENT LOCUS COVERAGE`. Block 2 §4.3 applies it to closure.

### 3.2 Class interface

`c` is declared by the claimant; admissibility, overbreadth and challenge are
Block 4 (D27, D28).

> Where no admissible class has been supplied, Block 3 produces **no class-relative
> result**, and never exclusion over the empty class set.

## 4. D20. Propagation and cut **[BOUND TO THE INSTANCE]**

> **`PROPAGATION(A, path, Rᵢ)`** — the class-bearing capacity of attachment
> instance `A` continues downstream along a propagation path of `A`.

> **`CUT(control, A, path, Rᵢ)`** — the propagation **of `A`** is severed at an
> identified control locus on that path.

The cut names the instance, not the class token. Two principals may carry the same
class on one path; a control may sever one lineage and not the other, and the
prior signature could not express it.

### 4.0 Propagation and cut are not intervening cause *(Step 0 R3)*

```
STEP0-RULING::R3
APPLICATION::APPLIED
```

> **Attachment, propagation and `CUT` are pre-overlay structural predicates**, not
> findings of proximate cause or intervening cause.
>
> A qualifying `CUT` may structurally sever a class-bearing lineage **without
> MICRM deciding whether the control constitutes a *novus actus interveniens*** in
> the Hart and Honoré or legal sense. That normative causal characterisation
> belongs to an overlay, which may consume a cut finding as an input to a doctrine
> MICRM does not contain.
>
> Anchor: Hart, H.L.A. and Honoré, T., *Causation in the Law*, 2nd edn., Oxford,
> 1985.

### 4.1 Cut conditions

> A cut qualifies for `A` on a propagation path when all four hold in `Rᵢ`:
>
> **(C1) Position.** The control locus lies **downstream of `A`'s attachment locus
> and upstream of the material consequence target** on that path.
>
> **(C2) Quality.** Specific to the scenario producing the selected consequence,
> independent, of adequate integrity and reliability, auditable, under management
> of change.
>
> **(C3) Evidential independence.** Evidence for C1, C2 and C4 is not under the
> unilateral control of any principal whose result the cut would benefit.
>
> **(C4) Incident-specific severance.** Evidence establishes that **the lineage
> originating at `A` did not continue across the control** into the downstream
> material lineage, or that the downstream action was independently reconstituted
> without that lineage's influence.

C4 is lineage-relative now: *the same class exists downstream* and *this
attachment propagated downstream* are different claims, and only the second
defeats a cut.

### 4.2 Path-relative cuts; dominance is reporting only

> A **global dominating cut** is one control supplying a qualifying E2 discharge
> for **every relevant propagation path** of the relevant attachment lineage in
> `Rᵢ`.

> **Global dominance carries no stronger structural consequence.** It is metadata
> distinguishing *one control cut all paths* from *different controls collectively
> cut all paths*. Both satisfy structural exclusion where every path is discharged.

Per your ruling, and for the stated reason: giving the global case stronger
semantics would recreate Gate privilege under a new name. Dominance is
class-relative and quantifies over propagation paths of the lineage.

### 4.3 Evaluability

Claims that no relevant bypass exists and that a lineage did not continue are both
absence claims.

> A dark surface or unresolved relation that could introduce a relevant bypass
> leaves **global dominance unresolved**. Absent severance evidence leaves **C4
> unresolved and the cut unqualified** — unevaluated, not failed.

## 5. D21. Structural-exclusion claim and path results

```
STEP0-RULING::R6
APPLICATION::APPLIED
```

Step 0 R6 ruled the vocabulary and it is adopted literally here. A root seeking
exit makes an **affirmative claim**, not an exception to another party's argument,
so Toulmin rebuttal is the wrong shape and GSN carries no such element.

```
structural-exclusion claim      the affirmative claim that exclusion holds for
                                (P, c)
structural-exclusion burden     the obligation to establish it; allocated in
                                Block 4 D26
per-path exclusion argument     an E2 or E4 argument advanced for one candidate
                                path
```

These three terms replace `rebuttal obligation` and are used throughout this
section and by Block 4 D26.

### 5.1 Evaluation domain

```
Block 2 NOT A CANDIDATE         retain it; do not evaluate exclusion
Block 2 closure-failure-only    retain CLOSURE FAILURE; do not convert to exclusion
candidate traversal exists      exclusion may be evaluated
```

> Exclusion is evaluated only over a **non-empty, evaluable candidate-path
> domain**. An empty domain is never a discharge.

### 5.2 Attachment-locus coverage and `NO CLASS ATTACHMENT` **[EMPTY-DOMAIN GUARD]**

> **`ATTACHMENT LOCUS COVERAGE(P, c, candidate path, Rᵢ)`** — the declared search
> and construction procedure has **accounted for every bounded result-relevant
> locus at which `c` could attach** on that path.
>
> ```
> coverage relation   COMPLETE     the bounded locus population is accounted for
>                     INCOMPLETE   a bounded result-relevant locus is unaccounted
>                     UNRESOLVED   the population's bound is not established
>
> coverage support    CORROBORATED / ASSERTED / UNRESOLVED, per §3.1's general form
> ```
>
> **Only `COMPLETE` with `CORROBORATED` support may discharge a structural
> result.** `COMPLETE` with `ASSERTED` support is an asserted coverage finding: it
> is carried in the record and the sensitivity record and yields
> `PATH UNRESOLVED`. A coverage claim resting on the search record of a principal
> whose exit it would support is `ASSERTED` by construction.

> **`NO CLASS ATTACHMENT(P, c, candidate path, Rᵢ)`** holds when
>
> - attachment-locus coverage is `COMPLETE` with `CORROBORATED` support, **and**
> - **every** generated or admitted instance on the path has
>   `attachment_relation = ABSENT` with `CORROBORATED` support, **and**
> - **no live blocker could introduce another admissible instance.**

> **Zero discovered loci support `NO CLASS ATTACHMENT` only where the search domain
> is affirmatively closed**, never because a universal quantifier over an empty set
> returns true.

This is Block 1's representation-coverage rule applied to attachment loci, and it
is the third site of the same empty-domain defect. **The general form, stated here
so the next site is found by rule rather than by review:**

> Any universally quantified structural finding must state the population it
> quantifies over, and that population must be shown covered before the
> quantifier's result is used.

One `ABSENT` locus is not no attachment anywhere: `L1 ABSENT` followed by
`L2 PRESENT` does not discharge the path.

### 5.3 The two arguments

> ```
> E2  a qualifying cut per D20 severs attachment instance A on a propagation path
> E4  NO CLASS ATTACHMENT for P and c on the candidate path
> ```

**E1 removed**: unreachable. Block 1 keeps excluded relations out of the accepted
graph, so no accepted path can carry one; if evidence excludes a relation, Block 1
builds a representation without it and the path does not exist.

**E3 removed**, per your ruling: under `UNRESOLVED`, `ASSERTED-CLOSURE` or
`ASSERTED-MISMATCH` it converts uncertainty into exit, and under `FAILED` it
duplicates Block 2's `CLOSURE FAILURE`, which is not exclusion.

### 5.4 Instance neutralisation and path results **[QUANTIFIER REPAIRED]**

> An attachment instance `A` is **neutralised** on candidate path `p` when either
>
> - `attachment_relation(A) = ABSENT` with `CORROBORATED` support, **or**
> - **the propagation path of `A` within `p`** carries a qualifying E2 cut per D20.

The second limb is **singular**, per §2: the propagation path of `A` within one
candidate path is that path's downstream suffix from `A`'s locus. The prior
wording said *every relevant propagation route*, which implied an uncovered
population inside a single candidate path and would have needed its own coverage
rule for a population that does not exist under §2's definition.

> **`REACHES TARGET(A, path, Rᵢ)`** — evidence positively establishes continuity of
> `A`'s lineage from its attachment locus to the material consequence target
> **without an established qualifying severance**. It carries the same support
> dimension as §3.1: `CORROBORATED`, `ASSERTED`, `UNRESOLVED`.

> **The absence of a qualifying cut is not positive reach evidence.** That is an
> absence claim under the absence rule; a reach finding must be established, not
> inferred from a failed search for a severance.

```
PATH EXCLUDED       NO CLASS ATTACHMENT on the path

                    OR  ATTACHMENT LOCUS COVERAGE = COMPLETE + CORROBORATED
                    AND every admitted result-relevant attachment instance
                        capable of carrying c on the path is neutralised
                    AND no live blocker could introduce an unneutralised instance
                        or an unneutralised propagation path

PATH NON-EXCLUDED   there exists an attachment instance A with
                        attachment_relation(A)   = PRESENT
                        attachment support(A)    = CORROBORATED
                        REACHES TARGET(A, path)  = established
                        reach support            = CORROBORATED

PATH UNRESOLVED     neither of the above is established
```

**Both branches of `PATH EXCLUDED` now carry the coverage guard**, per §5.2's own
general rule. Without it the neutralisation branch discharged over an empty
admitted-instance set whenever no locus had been generated.

**`PATH NON-EXCLUDED` carries support at every stage.** Independently supported
downstream reach cannot carry an origin that is `ASSERTED` or `UNRESOLVED`, which
§3.1 states and the prior predicate did not enforce.

**A single E2 is an instance-level discharge, not a path-level one.** With `A₁`
cut and `A₂` uncut and reaching the target, the prior rule returned
`PATH EXCLUDED`; it now returns `PATH UNRESOLVED` or `PATH NON-EXCLUDED`
depending on `A₂`'s reach evidence. Once attachments became instances, exclusion
had to become universal over them, and it did not.

> **A rebutted argument is not a path result.** Rebutting `E2 via C1` says nothing
> about `E2 via C2`, and `PRESENT` attachment rebutting an `E4` claim leaves a
> downstream cut able to neutralise the instance.

> **`ASSERTED` attachment or reach reaches neither structural result.** It yields
> `PATH UNRESOLVED` and is carried in the attachment record and the sensitivity
> record. That is not under-reporting the dispute; it reports it at the
> evidentiary level where the dispute actually is.

## 6. D18. Structural result **[AGGREGATED FROM PATHS]**

Per principal and admissible class `c`:

```
STRUCTURALLY EXCLUDED       every relevant candidate path is PATH EXCLUDED, and no
                            live blocker can introduce another path

STRUCTURALLY NON-EXCLUDED   at least one relevant candidate path is PATH NON-EXCLUDED

UNRESOLVED                  neither condition holds
```

**Non-exclusion now has a positive basis** rather than being derived from the
failure of an exclusion attempt. That is the difference between *we could not
exclude* and *we established something reaches the target*, and only the second
should carry the stronger-sounding token.

> **These are not one enum with closure failure.** Block 2's
> `authority-accountability closure failure` is a separate traversal-level
> finding. A principal may carry closure failure over `τ₁` and an exclusion
> finding over `τ₂`; both are reported.

> **`STRUCTURALLY NON-EXCLUDED` now carries a positive predicate**, and the older
> conservative-output wording understated it. It means: **evidence establishes at
> least one relevant class-bearing lineage reaching the material consequence target
> without qualifying severance**, on this evidence, this selection, and this class.
>
> **It is not a finding of actual causation, fault, liability, contribution
> magnitude, or accountability assignment.** It replaces the last line of v0.2
> draft §3.4.

Candidate 8.3's materiality threshold is not used, per the salvage ruling.

## 7. D22. Argument states **[SUCCESS STATE ADDED]**

```
STEP0-RULING::R4
APPLICATION::APPLIED
```

```
DISCHARGED    the exclusion argument affirmatively satisfies its governing
              conditions
UNSUPPORTED   required evidence absent or incomplete; warrant not established
UNDERCUT      evidence affirmatively defeats the claimed support relation
REBUTTED      evidence supports the contrary structural finding
```

`unresolved` is the reporting token over `UNSUPPORTED` and `UNDERCUT`.
`DISCHARGED` and `REBUTTED` are determinate opposite outcomes.

The prior vocabulary had no success state while §5 spoke of an argument
*discharging*, so the phrase named nothing recorded.

> D22 explains **why an individual argument succeeded or failed**. §5.4 states the
> **path** result and §6 the **principal and class** result. `REBUTTED` stays here
> and does not by itself derive a D18 outcome.

## 8. D23. Overlay interface **[QUALIFIED]**

> MICRM hands an overlay: D18 status, attachment instances with classes and
> support, exclusion arguments and their states, path results, closure findings,
> live blockers, and the sensitivity record.

The earlier *one-directional by construction* was false, since Block 2 admits
legal boundaries and assignment authority as frame inputs.

> **Overlay outputs never retroactively rewrite a MICRM structural finding from
> the same evaluation.** Exogenous frame parameters enter as **declared, versioned
> inputs**, and a changed input produces a **new analysis** rather than a modified
> result.

**Omission** stays outside core: no null traversal is manufactured; overlays may
attach deployment, monitoring, maintenance, revocation, intervention and lifecycle
duties and consume MICRM records.

> The overlay boundary is where epistemic output becomes normative input, and the
> only place that conversion is licensed. Blocker 3.2 is answered by the boundary
> existing, being non-retroactive, and being crossed explicitly.

## 9. D24. Sensitivity

Blocks 1 and 2 deliver: selection alternatives and designation states,
representation-varying facts, traversal-partition alternatives, profile blockers
with the result each can change. Block 3 adds:

```
attachment instances that vary under an alternative declared class
attachment findings whose support is ASSERTED rather than CORROBORATED
cuts qualifying in some retained representations and not others
path results that vary across representations
paths whose exclusion rests on a single argument, with that argument named
whether every path was cut by one control or by several
```

## 10. C2 provenance

```
STEP0-RULING::R7
APPLICATION::APPLIED
```

Step 0 R7 recorded the CCPS set as independence, functionality, integrity,
reliability, auditability, access security, management of change.

> **MICRM selects and adapts a subset of IPL-style criteria. It does not reproduce
> the CCPS IPL qualification test and claims no compliance with any standard.**

## 11. Acceptance: stress case 5.7, re-run with multiple instances

**A continuous governor upstream of the final Gate, on a candidate path carrying
two attachment instances `A₁` and `A₂`, with the governor between `A₁`'s locus and
the target and `A₂` attaching downstream of it.**

- **Eligible to cut?** Yes, irrespective of the name Gate.
- **Whose propagation?** A named instance. C1 requires the control to lie
  downstream of that instance's locus, so the governor can cut `A₁` and **cannot**
  cut `A₂`, which attaches below it.
- **Does cutting `A₁` exclude the path?** **No.** `PATH EXCLUDED` requires every
  admitted result-relevant instance neutralised. `A₂` is not, so the path is
  `PATH NON-EXCLUDED` if `A₂` has a `CORROBORATED` `REACHES TARGET` finding, and
  `PATH UNRESOLVED` otherwise. This is the case the prior generation got wrong.
- **Is dominance plus quality enough for the cut itself?** No; C4 requires
  incident-specific severance of that lineage.
- **What excludes the principal?** Every relevant candidate path `PATH EXCLUDED`,
  a non-empty evaluable domain, and no blocker able to introduce another path,
  instance, or route.
- **Is the Gate privileged?** No, and neither is dominance, which is reporting
  only. The primitive is incident-specific, class-relative, lineage-specific
  severance on a path, aggregated universally over the instances on it.

```
5.7 conceptual disposition: PASS
5.7 formal disposition:     PASS
```

The conditional is discharged: one severed lineage can no longer exclude a path
containing another unsevered lineage.

## 12. Repair checklist, this generation

```
1  ATTACHMENT LOCUS COVERAGE gains relation and support dimensions  done, §5.2
2  only COMPLETE + CORROBORATED may discharge a structural result   done, §5.2
3  both PATH EXCLUDED branches consume the qualified coverage       done, §5.4
4  the support requirement stated in general form, not per site     done, §3.1
```

Frozen: local attachment-instance architecture and the `P/τ/c/locus/Rᵢ` tuple;
the instance as subject of evaluation; cuts bound to the lineage;
incident-specific C4; path-relative cuts; dominance reporting-only; removal of E1
and E3; empty-domain guards on both `PATH EXCLUDED` branches and
`NO CLASS ATTACHMENT`; support at every stage of the positive lineage;
`DISCHARGED` in D22; the overlay interface; D18 built from path results; and 5.7
at PASS on both dispositions.

**Predicates carrying the support dimension in this block**, so a successor can
check the list rather than rediscover it:

```
attachment relation (§3.1)      REACHES TARGET (§5.4)
cut evidence, C3 (§4.1)         ATTACHMENT LOCUS COVERAGE (§5.2)
```

Block 2 §4.3 carries it for closure. Block 4's D30 supplies the test all five
consume.

## 13. What Block 3 does not settle

Burden allocation and standards (D25, D26); class admissibility and overbreadth
(D27, D28); conflicting-record resolution (D29); the independence test itself
(D30, with §3.1 and C3 stating the interface); stress cases 5.3, 5.6, 5.9.

## 14. Decisions resolved in this block

Both questions previously carried here were already answered by the text that
followed them, which is a stale-record defect rather than an open question:

```
does PATH NON-EXCLUDED need its own support condition?
    RESOLVED YES. REACHES TARGET carries CORROBORATED / ASSERTED / UNRESOLVED,
    and §5.4 now requires CORROBORATED at both the attachment origin and the
    reach finding.

should ASSERTED attachment appear in D18?
    RESOLVED NO. Asserted attachment or reach yields PATH UNRESOLVED and is
    carried in the attachment and sensitivity records. It reaches neither
    structural result.
```

No open decisions remain in Block 3.

## 12. Acceptance: stress case 5.8

```
STRESS-CASE::5.8
DISPOSITION::PASS
```

**Pure omission.** A required human or institutional act was not performed, and a
consequence followed.

This is the one case MICRM answers **by exclusion from its own scope**, and the
answer must be a stated derivation rather than the silence a reader would read as
an oversight.

- **Is there a traversal?** No. D9 makes a traversal occurrence a labelled set of
  **event occurrences**, and no machine event occurred. Manufacturing a null
  traversal would create an occurrence the evidence does not establish, which is
  the same move `derived` edges were constrained to prevent in Block 1.
- **Is there material ancestry?** Not from the omission. With no event occurrence
  there is no attachment locus, so D19 produces no instance and D20 nothing to
  propagate or sever.
- **Is the principal therefore excluded?** **No.** Block 3 §5.1 evaluates exclusion
  only over a non-empty candidate-path domain; an empty domain is never a
  discharge. The correct MICRM output is **no class-relative result**, not
  `STRUCTURALLY EXCLUDED`.
- **Where does the case go?** D23. The overlay may attach duties for deployment,
  monitoring, maintenance, revocation, intervention and lifecycle governance, and
  may consume MICRM records to do so. **A failure to perform a required act is not
  converted into a fictional traversal to force it into the graph.**
- **Does MICRM say the omission did not matter?** No, and this is the load-bearing
  sentence. **Out of scope is not a finding of no responsibility.** MICRM reports
  that its core does not represent the case, and the overlay decides on its own
  terms.

**Disposition: PASS**, by the matrix's own criterion: the passing answer is that
MICRM core does not represent it, and D23 is where that decision is visible.

## 13. Markers for dispositions already in this block

```
STRESS-CASE::5.7
DISPOSITION::PASS
```

Derived in §11.


---

*MICRM Formal Semantics block 3, ruling application | The replacement matched nothing and the check matched the complaint*
