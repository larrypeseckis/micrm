<!-- MICRM-ARTIFACT
ARTIFACT:         MICRM-PAPER-FRONT-MATTER-v01.md
SUPERSEDES:       MICRM-PAPER-FRONT-MATTER-v01.md 48e15935b0db0945632837803a965d2c8596e99aab2660fd4689326330f3581e
FILE-THIS-AS:     corpus/paper/
AUTHORED-UNDER:   lane_tooling
INTENDED-REGIME:  declaration
STATUS:           FROZEN, STEP 8 PRESENTATION SUCCESSOR
GOVERNED BY:      e66df83c2c866ad4d6928063248967f5fd63d1fc0d2f6ef29ce65ea248a2e2f9
-->


# Machine-Initiated Consequence Reference Model (MICRM)

## Formal Semantics for Authority, Accountability, and Evidentiary Warrant in Machine-Initiated Consequence Attribution

---

## Abstract

The Machine-Initiated Consequence Reference Model (MICRM) is a formal reference
model for analyzing candidate attribution in machine-initiated consequences
through consequence structure, authority and accountability closure, and
evidentiary warrant. MICRM is designed for cross-substrate application, but this
revision does not establish substrate neutrality; applicability requires
substrate-specific validation.

The model separates two dimensions that natural language tends to merge. A
structural relation between occurrences — that a traversal is materially
ancestral to a consequence target, that authority and accountability terminate at
the same principal, that a contribution class attaches at a locus — is established
independently of the evidentiary warrant for asserting it. Support is evaluated
per basis and relative to the principal a proposition would advance, so a record
may corroborate one finding and merely assert another. Where MICRM licenses negative
inference from absence, it requires completeness over the relevant named
population, and the trust root at which the support recursion terminates declares
its assumptions rather than concealing them.

MICRM's outputs are candidacy and structural findings, not liability. Unresolved
evidence is not converted into an exculpatory finding.

An independently authored challenge process applied sealed incident patterns
against frozen specification bytes and identified twelve rule defects, none of
which was found by the project's own self-check. A substantial portion of the
model remains untested, and the validation chapter names those surfaces
individually.

---

## Contribution

MICRM does not claim novelty for defeasible reasoning, completeness-gated
inference, delegation chains, evidentiary provenance, or multi-model
quantification individually.

> MICRM operationalizes existing concerns from several literatures for
> machine-initiated consequence attribution, with explicit interfaces among
> material consequence structure, authority/accountability closure,
> class-sensitive candidacy, and evidentiary warrant.

A related-work analysis, frozen before the prose was written, entered six
candidate contribution claims; none survives as a novelty claim. Three design
differences are retained, each with its status stated: beneficiary-relative
independence as the mechanization of a known doctrine; relation/support separation
as a weakly attributed design difference; and dual authority/accountability
termination comparison as a difference addressing a gap the neighbouring
literature states as open.

---

## The two artifacts

This paper is **expository**. The formal semantics are **normative** and are
carried by a separate specification, cited here by version and hash. Where the
two disagree, the specification governs and this paper is defective.

```
SPECIFICATION, formal semantics D1-D30
  Block 1  graph and consequence model
           3b850a77a1e199a5f5c45b50d85f284353f770fbebb6deb43a53d4d5e9e391c1
  Block 2  root, closure and candidacy
           44b780353674c0202e004362e1613dc513c39cf4a0658caac2b4310ce333be64
  Block 3  attachment, propagation and exclusion
           f5ec01de7e4dfb5d81b7b506e7ceb680f2bfcb1a79376456ffee2f5f66c71cb8
  Block 4  burdens, classes, conflicts and independence
           cbae193958c20f9cd01c142cfb18e10881a21b126da4881b884a6cb140a8f1bc
```

No normative content exists only in this paper.

---

## Reproducibility

The validation record specifies how to reproduce each derivation from its sealed
fact pattern and the rule-byte generations named in that derivation. The
provenance appendix records that procedure and the retained superseded
generations. Public archive binding remains undischarged until publication.

> **This paper is not complete for publication until it is bound to a public
> artifact archive or repository release.** Until that binding exists, the
> reproduction procedure is internally specified but not independently executable
> from the manuscript alone.

<!-- MICRM-ARTIFACT
ARTIFACT:         MICRM-PAPER-CH-INTRODUCTION-v01.md
SUPERSEDES:       MICRM-PAPER-CH-INTRODUCTION-v01.md 4c521735d4ac4317e168987b1ea096a9a65b9ce3967a576f0b41ad45c01303c7
FILE-THIS-AS:     corpus/paper/
AUTHORED-UNDER:   lane_tooling
INTENDED-REGIME:  declaration
STATUS:           FROZEN, STEP 8 PRESENTATION SUCCESSOR
GOVERNED BY:      e0909c491634c76cabbe1693c14f0317df258be6e4dd339f2d43f32e4c45dfc5
                  90e79f738306df2888ac089d8cb8ad9efa308adab9993155b03bcca39a2d0aa4
-->


# 1. Introduction

Machine-initiated consequences create an attribution problem that is easy to collapse into a simpler question than the evidence supports. A system may produce a material consequence through one set of events, operate under authority that traces through another set of relationships, terminate accountability somewhere else, and leave an evidentiary record whose reliability depends on who generated, retained, selected, or disclosed it. Treating those dimensions as one question risks converting structural association into responsibility, an asserted record into corroboration, or missing evidence into an affirmative conclusion.

The Machine-Initiated Consequence Reference Model (MICRM) is a formal reference model for keeping those questions separate while allowing their results to compose. It represents material consequence structure, authority and accountability closure, contribution-sensitive candidacy, and evidentiary warrant as related but distinct parts of one analysis. The central discipline is conservative: a relation and the support for that relation are not the same object, unresolved evidence is not converted into an exculpatory finding, and a downstream conclusion is not promoted merely because an upstream structure appears plausible.

This separation matters because machine-initiated systems often produce records that are operationally useful but evidentially asymmetric. A principal may control a record that supports a proposition beneficial to that same principal. A search may appear complete only because the party advantaged by the conclusion defines the searchable universe. An authority chain may be structurally traceable while its termination remains unsupported. MICRM therefore evaluates evidentiary support per basis and relative to the principal a proposition would advance, while preserving the underlying structural relation separately from the warrant for asserting it. Where negative inference depends on absence, completeness over the relevant named population becomes part of the evidentiary question rather than an unstated premise.

MICRM does not claim that these underlying ideas are individually new. The related-work process began with six candidate contribution claims and deliberately attempted to destroy them against the strongest identified prior art. None survives as a novelty claim. Defeasible reasoning, completeness-gated inference, delegation chains, evidentiary provenance, recursive warrant, and non-selection across alternative representations all have substantial antecedents. The resulting contribution is narrower: MICRM operationalizes concerns from those literatures for machine-initiated consequence attribution, with explicit interfaces among material consequence structure, authority and accountability closure, class-sensitive candidacy, and evidentiary warrant.

Three retained design differences remain, none as a novelty claim, but they do not carry equal attribution strength. First, evidentiary independence is evaluated relative to the beneficiary of the proposition being advanced rather than treated as a property of a record in isolation. Second, the model keeps a structural relation distinct from the support state that qualifies it, so an asserted relation does not silently become an established finding. This second difference is explicitly weakly attributed: no separate prior-art search was run for it, and its evidence of non-triviality is behavioural rather than bibliographic. Third, MICRM compares the termination of authority and accountability paths rather than treating authority-chain construction itself as a contribution. These are design choices within the assembled model, not claims that the underlying doctrines originated here.

The model's outputs are correspondingly bounded. MICRM produces structural findings and candidacy states. It does not independently determine legal fault, liability, moral responsibility, blameworthiness, or apportionment. A high rate of structural non-exclusion is therefore not equivalent to a high rate of accountability. It may instead reflect the model's deliberately conservative refusal to convert missing or interested evidence into a favourable exit. Questions of legal or institutional consequence remain outside the formal semantics and belong to whatever overlay consumes MICRM's structural output.

The distinction between specification and paper is also deliberate. The formal specification is normative; this paper is expository. No normative MICRM content exists only in the paper. The paper cites the specification by version and content hash, and if the two disagree, the specification governs and the paper is defective. This arrangement permits the paper to explain the model without making explanatory compression a second source of semantics.

Validation is reported with the same boundary discipline. The current validation set contains eleven sealed variants across five independently authored patterns, nine of them current. Each derivation ran against frozen rule bytes, and the process identified twelve rule defects that were repaired as the work progressed. Those results do not establish that MICRM is correct. They establish a reproducible record of what was tested, against which rule bytes, and with which outcomes. A substantial portion of the model remains untested, including graph behavior under load, end-to-end class behavior, multi-representation candidacy, attachment and propagation, burdens, the overlay interface, and other named surfaces.

That limitation is material to the claim of this paper. MICRM is presented here as a formalized reference model exercised against independently authored sealed patterns, not as a completed theory of machine accountability and not as a universally validated substrate-neutral framework. Its purpose is to make attribution analysis more explicit about what is structural, what is evidentiary, what remains unresolved, and what assumptions are doing work when a finding is promoted.

The remainder of the paper develops that argument in four directions. The related-work section establishes what neighboring literatures already provide and therefore constrains the contribution claim. The validation section reports the sealed challenge process, the mechanisms actually exercised, the defects found, and the surfaces left untested. The privacy, security, and adversarial analysis examines the evidence spine itself as an attack and surveillance surface without adding new normative semantics. The figures provide checked visual representations of selected parts of the specification, and the provenance appendix records the version and reproduction information needed to recover the governed artifacts. Public archive binding is completed only at publication.

<!-- MICRM-ARTIFACT
ARTIFACT:         MICRM-PAPER-CH-RELATED-WORK-v02.md
SUPERSEDES:       MICRM-PAPER-CH-RELATED-WORK-v01.md 54b0c2c3ae8abbc5be0f8dc1846e7524a39a4b5ca8fc405e63227b35a0f14e20
FILE-THIS-AS:     corpus/paper/
AUTHORED-UNDER:   lane_tooling
INTENDED-REGIME:  declaration
STATUS:           FROZEN, STEP 8 REFERENCE-APPARATUS SUCCESSOR
SOURCE REGISTER:  408814941be9ed23e612b8a86e4866681737f3b10ca23d5ee6434eef56be06c1
CLAIM-SOURCE:     6f7d1654caa1899e36eb4c66cfa2536770168ad7e3d678c04ee71ba205eb3058
-->


# Related Work and Differentiation

## 1. Method

The original Step 3 hypothesis register was frozen **before** the prose began, so
the contribution claim could not be selected first and cited around afterwards.
It recorded candidate contribution claims, the prior-art families searched
against each, and the disposition of each claim. The current successor preserves
those dispositions while revalidating their attribution against the
claim-to-source record.

The method was adversarial rather than confirmatory. For each candidate claim the
question asked was not *who else works in this area* but *what existing work would
destroy this claim*, and the strongest known neighbour was searched first.

## 2. Prior work, and what each family takes

### 2.1 Defeasible reasoning and structured argumentation

Structured argumentation provides a mature formal treatment of defeat semantics
directly relevant to MICRM's evidentiary machinery. ASPIC+ builds arguments from strict rules, whose premises guarantee their conclusion, and defeasible rules, whose premises create only a presumption in favour of it [1], and admits attack on an argument's uncertain premises, on its defeasible inferences, or on the conclusions of those inferences — undermining, undercutting and rebutting — with conflicts between arguments often resolved by explicit preferences [1].

Abstract argumentation, which MICRM does not claim, additionally supplies the
retention of incompatible positions and their quantification through extensions
and skeptical and credulous acceptance. **MICRM does not claim non-selection itself as a difference; `Γ`
differs only in what is branched, world-representations rather than argument
extensions.**

### 2.2 Evidential reasoning in law

Evidential inference networks long predate any computational treatment.
Wigmore constructed what are now called inference networks and attended to
relevance, credibility and inferential force [2, 3]. Schum's later synthesis
supplies a substance-blind classification of evidence forms — tangible,
testimonial, missing, authoritative-record — and an analysis of recurrent
combinations including harmony, dissonance, synergism and redundancy [2]. Formal treatments followed: Wigmore's charting method has been given a formal underpinning in logics for
defeasible argumentation, resting on argumentation schemes and empirical
generalisations [4], and hybrid models combine argumentation and explanation with proof standards and
burdens of proof [5].

Burden allocation is likewise formalized and is both party-relative and
proposition-relative: a general burden of persuasion for one party can be combined with exceptional propositions for which the burden is shifted onto the other party, and the model extends to different standards of proof [6, 7].

Legal systems also exclude relevant evidence by rule: rules of admissibility
require exclusion even where evidence is relevant to a material proposition in
issue [8].

**This family takes evidential structure, source qualification, missing evidence,
burden allocation, and rule-governed admissibility.**

### 2.3 Completeness and negation in open-world knowledge bases

The inference from completeness to negation is standard and formal.
Completeness assertions establish cardinalities and, in turn, enable establishing negation: if the list of a subject's advisees is known to be complete, it follows that others were not advised, and query-level machinery deduces which parts of an answer are implied to be complete [9]. The reliability of completeness information is itself a concern. Completeness
statements are assertions whose satisfaction can be evaluated against a data
source [10], and later work attaches provenance such as authorship, timestamps
and external references to those statements as a basis for trust determination
[11].

**This family takes completeness-gated negative inference.**

### 2.4 Assurance cases

Assurance 2.0 occupies most of the territory a coupled structural-evidentiary
model might otherwise claim. It distinguishes subclaims, the principal supporting premises, from the sideclaim, which captures the applicability conditions for the warrant of the argument scheme used in a step — assumptions about scope, model fidelity, tool qualification, independence, or completeness — a distinction described as methodological rather than logical, since sideclaims could be represented as ordinary premises [12].

Those applicability conditions recurse. A side-claim may be justified by a subargument of its own, may become the top claim of a separate subcase, may be left unsupported as an explicit assumption, and can be challenged by a defeater; where a decomposition is over hazards, the side-claim requires that all hazards have been identified and that the decomposition considers them all, individually and in combination, and may be discharged by evidence attesting to a well-accepted method performed
diligently [12].

Two further properties are decisive for this chapter's dispositions.

**Provenance is itself the subject of recursive evidentiary support.**
In the evidence incorporation block, observations yield evidence asserted to support a claim; the claim generally concerns something measured, and the sideclaim generally concerns provenance of the evidence and is supported by a subcase
establishing it [12].

**Completeness is a condition of deductive validity.** Argument steps often iterate over an enumeration, and for such a step to be deductive there must be evidence that the enumeration is complete and that the claim
distributes over its elements [12].

The framework also has a termination account and an explicit treatment of
irreducible uncertainty: confidence is assessed from positive, negative and residual-doubt perspectives, with justification required to be indefeasible, and unresolved potential defeaters recorded as conscious, documented judgments
rather than silently discharged [12]. Evidential confidence is claim-relative: confidence at evidential leaf nodes will change as they are required to justify
different claims [12]. And independence appears inside the confidence calculus, where confidence in a sideclaim that subclaims are adequately diverse and independent limits the confidence propagated
upward [12, 13].

### 2.5 Delegation and authority chains

Authority-chain construction is well developed. RT provides localized authority over roles, delegation in role definition, linked and parameterized roles, and manifold roles expressing threshold and separation-of-duty policies, with semantics defined by translation to Datalog [14], alongside credential chain discovery in RT [15] and certificate chain discovery in
SPKI/SDSI [16]. The asymmetry MICRM formalizes appears in governance doctrine rather than in
formal work. Governance frameworks distinguish delegation from retained
accountability: governing bodies may delegate functions or decision work while
remaining collectively or ultimately responsible for their exercise, unless the
law provides otherwise [17].

Separately — and not as a consequence of delegation structure — a long-standing
literature holds that where many actors contribute to an outcome, attributing
responsibility to any individual becomes difficult, and that neither
hierarchical nor collective models resolve this well [18]. That literature
frames the difficulty as a gap in the distribution of responsibility rather
than as diffusion [19].

**This family takes authority-chain construction and delegation reachability.**

### 2.6 Assurance practice and the interested party

The interested-party problem is codified normatively rather than
inferentially. Completeness is management's assertion, and auditors test it outside-in —
starting from underlying source evidence and checking whether it reached the
records — because omitted items are absent from the recorded population
[20, 21]. Self-review is one of five codified threats to independence, alongside self-interest, advocacy, familiarity and intimidation [22].

**This family takes the interested-party problem, as professional prohibition
applied by humans.**

## 3. What prior art removed

This section reports a negative result, and it is placed here rather than at the
end because it is the principal outcome of the exercise.

An initial hypothesis held that MICRM's principal contribution lay in its graph
model. That hypothesis was **reopened** after validation, on the ground that
validation had barely exercised the graph model and had instead shown the
evidentiary machinery to be outcome-determinative.

Six candidate claims were then entered and searched adversarially. **None
survives as a novelty claim.**

```
representational non-selection with       REJECTED
necessity/possibility quantification      abstract argumentation retains
                                          incompatible positions as extensions
                                          and quantifies over them

completeness-gated negative inference     REJECTED
                                          open-world KB work licenses negation
                                          from completeness assertions; assurance
                                          requires enumeration completeness for
                                          deductive validity

coverage-gated negation under             REJECTED
beneficiary-relative independence         formal half in KB completeness;
                                          interested-party and claim-relative
                                          concerns in assurance, audit and
                                          professional-independence practice

recursive warrant with explicit           REJECTED
termination                               assurance cases recurse through
                                          subcases and bottom out in evidence,
                                          explicit assumptions or recorded
                                          residual doubts

non-laundering of uncertainty across      WITHDRAWN
heterogeneous inference stages            not on a citation, but on an objection
                                          the authors could not answer: that this
                                          is the same invariant applied more
                                          times

proposition-relative evidentiary          NARROWED
independence                              claim-relative evidence confidence is
                                          already present in assurance practice
```

Separately, and outside that population of six, **authority-chain construction was
also rejected as a contribution claim**: RT and SPKI/SDSI already provide the chain
machinery, and what MICRM retains is the comparison of termination sets rather than
their construction.

The distinction between **rejected** and **withdrawn** is preserved deliberately.
Four of the six claims fell to retrieved prior art. One was withdrawn on an unanswered
objection rather than on a citation, and the record says so rather than
collapsing it into the cited-rejection population.

The purpose of reporting this is not modesty. It is that the reader can see the
related-work process **removing** claims rather than assembling support for a
contribution chosen beforehand.

## 4. Contribution

MICRM does not claim novelty for defeasible reasoning, completeness-gated
inference, delegation chains, evidentiary provenance, or multi-model
quantification individually.

> **MICRM operationalizes existing concerns from several literatures for
> machine-initiated consequence attribution, with explicit interfaces among
> material consequence structure, authority/accountability closure,
> class-sensitive candidacy, and evidentiary warrant.**

A recent source in the neighbouring literature states the problem directly:
recent work on authenticated delegation addresses who is permitted to act, while tracing who actually caused a given outcome across multi-agent delegation chains remains largely open [23].

## 5. Design differences, with their statuses

The following are differences from the nearest prior work. **They are not a list
of contributions, and their statuses differ.**

**Beneficiary-relative independence.** MICRM computes the support state of a
finding as a function of the beneficiary set of the specific proposition, so one
record may be corroborated for one finding and asserted for another because the
interested party differs. The concerns are not new, but they do not correspond to
one prior doctrine. Completeness is an assertion of the represented party, and
testing it proceeds from evidence outside the records rather than from the records
themselves, because omitted items leave no trace in the population under that
party's control [20, 21]. Evidentiary obligations vary by party and by proposition
[6, 7]. Evidential confidence is relative to the claim being justified, and
provenance is itself an evidentiary object [12]. Self-interest and self-review are
codified threats to independent professional judgement [22]. None of these
supplies MICRM's operator: support state as a function of the particular
proposition and the principals that proposition advantages. *Status: mechanization
of established interested-party and claim-relative evidentiary concerns, not
conceptual novelty.*

**Relation/support separation.** A structural relation is never altered by
evidentiary state; only its promotion to a finding is. The nearest neighbour is
the methodological-rather-than-logical framing of applicability conditions in
assurance cases, which is not the same invariant. No dedicated prior-art search
was performed for this item, and the evidence for its non-triviality is
behavioural rather than bibliographic: the invariant was violated at five
separate sites during implementation of the specification that states it, and
each violation was caught by external review. *Status: design difference, weakly
attributed, not claimed as novel.*

**Dual termination comparison.** MICRM constructs an authority-termination set
and an accountability-termination set for the same traversal and treats their
disagreement as a substantive finding rather than as an error. Governance
doctrine establishes that delegation can coexist with retained accountability
[17], and authority-chain construction and discovery, which MICRM does not claim,
are well developed in RT and SPKI/SDSI [14-16]. No retrieved framework constructs both termination sets and
compares them. *Status: design
difference addressing a retrieved gap, not a priority claim.*

## 6. What this chapter does not claim

```
NOT claimed   that defeasible reasoning, completeness-gated inference, delegation
              chains, evidentiary provenance or multi-model quantification are
              novel here
NOT claimed   that beneficiary-relative independence is inexpressible elsewhere;
              assurance cases are expressive enough that a case author could
              instantiate it as a sideclaim, and MICRM's difference is that it
              standardizes and mechanizes a particular test rather than leaving
              it to the author
NOT claimed   that the graph model is MICRM's contribution — and not that it is
              unimportant, since validation did not reach it
NOT claimed   that this survey is exhaustive; absence of a retrieved
              counterexample is not evidence that none exists
```

## 7. A limitation of the differentiation itself

MICRM treats principals as first-class objects, so every assertion in the model
has an author who may be a beneficiary. The knowledge-base completeness work
reviewed here does not model principals and therefore does not ask who supplied a
completeness statement; the assurance, audit and professional-independence
sources reviewed here address interested-party concerns through claim structure,
audit procedure or professional prohibition rather than through MICRM's
beneficiary-relative support operator. MICRM sits between them.

A reasonable reader may conclude that beneficiary-relativity is therefore a
consequence of modelling principals at all, rather than a contribution. The
available response is that nothing forces a principal-bearing framework to route
coverage assertions through the same independence test as substantive evidence,
and MICRM does. Whether that response is sufficient is not something a literature
search can settle, and it is stated here rather than avoided.


---

## References

[1]  Modgil, S. & Prakken, H. (2014). The ASPIC+ framework for structured
     argumentation: a tutorial. *Argument & Computation* 5(1):31-62.
     doi:10.1080/19462166.2013.869766

[2]  Schum, D.A. (1994). *The Evidential Foundations of Probabilistic Reasoning*.
     Wiley / Northwestern University Press. ISBN 9780810118218

[3]  Dawid, P., Schum, D. & Hepler, A. (2011). Inference Networks: Bayes and
     Wigmore. In Dawid, Twining & Vasilaki (eds), *Evidence, Inference and
     Enquiry*. OUP / British Academy

[4]  Bex, F., Prakken, H., Reed, C. & Walton, D. (2003). Towards a formal account
     of reasoning about evidence: argumentation schemes and generalisations.
     *Artificial Intelligence and Law* 11:125-165.
     doi:10.1023/B:ARTI.0000046007.11806.9a

[5]  Bex, F. & Walton, D. (2012). Burdens and standards of proof for inference to
     the best explanation: three case studies. *Law, Probability and Risk*
     11(2-3):113-133

[6]  Calegari, R. & Sartor, G. (2020). Burden of persuasion in argumentation.
     *Proc. 36th International Conference on Logic Programming (Technical
     Communications), ICLP 2020*. EPTCS 325, pp. 151-163.
     doi:10.4204/EPTCS.325.21. arXiv:2009.10244

[7]  Prakken, H. & Sartor, G. (2011). On modelling burdens and standards of proof
     in structured argumentation. *JURIX*. doi:10.3233/978-1-60750-981-3-83

[8]  Federal Rules of Evidence, Rule 402 and Advisory Committee Note; Rule 403

[9]  Razniewski, S., Arnaout, H., Ghosh, S. & Suchanek, F. (2024). Completeness,
     Recall, and Negation in Open-World Knowledge Bases: A Survey. *ACM Computing
     Surveys* 56(6), Article 152. doi:10.1145/3639563. arXiv:2305.05403 (2023)

[10]  Darari, F., Nutt, W., Pirro, G. & Razniewski, S. (2013). Completeness
     statements about RDF data sources and their use for query answering.
     *ISWC*, pp. 66-83. doi:10.1007/978-3-642-41335-3_5

[11]  Darari, F., Nutt, W., Razniewski, S. & Rudolph, S. (2020). Completeness and
     soundness guarantees for conjunctive SPARQL queries over RDF data sources
     with completeness statements. *Semantic Web* 11(3):441-482.
     doi:10.3233/SW-190344

[12]  Bloomfield, R. & Rushby, J. (2022). *Assessing Confidence with Assurance 2.0*.
     SRI-CSL Technical Report SRI-CSL-2022-02. arXiv:2205.04522

[13]  Bloomfield, R. & Rushby, J. (2024). Confidence in Assurance 2.0 Cases.
     arXiv:2409.10665 [cs.SE]

[14]  Li, N., Mitchell, J.C. & Winsborough, W.H. (2002). Design of a role-based
     trust management framework. *Proc. 2002 IEEE Symposium on Security and
     Privacy*, pp. 114-130

[15]  Li, N., Winsborough, W.H. & Mitchell, J.C. (2003). Distributed credential
     chain discovery in trust management. *Journal of Computer Security*
     11(1):35-86

[16]  Clarke, D., Elien, J.-E., Ellison, C., Fredette, M., Morcos, A. & Rivest,
     R.L. (2001). Certificate chain discovery in SPKI/SDSI. *Journal of Computer
     Security* 9(4):285-322

[17]  OECD (2023). *G20/OECD Principles of Corporate Governance 2023*, Ch. V.
     OECD Publishing, Paris. doi:10.1787/ed750b30-en

[18]  Thompson, D.F. (1980). Moral Responsibility of Public Officials: The Problem
     of Many Hands. *American Political Science Review* 74(4):905-916

[19]  van de Poel, I., Nihlen Fahlquist, J., Doorn, N., Zwart, S. & Royakkers, L.
     (2012). The Problem of Many Hands: Climate Change as an Example. *Science
     and Engineering Ethics* 18:49-67. doi:10.1007/s11948-011-9276-0

[20]  ISA 315 (Revised 2019), *Identifying and Assessing the Risks of Material
     Misstatement*. IAASB

[21]  ACCA. The audit of assertions. Association of Chartered Certified
     Accountants, technical article, Audit and Assurance (AA) exam resources.
     Underlying authority: PCAOB AS 1105, *Audit Evidence*; AS 2315,
     *Audit Sampling*

[22]  International Ethics Standards Board for Accountants (IESBA).
     *International Code of Ethics for Professional Accountants (including
     International Independence Standards)*, §120.6 A3. IFAC, New York

[23]  Nian, Y., Yuan, A., Zhang, H., Li, J. & Zhao, Y. (2026). Auditable Agents.
     arXiv:2604.05485 [cs.AI]

---

*Related work | Six candidates entered; none survives as a novelty claim*

<!-- MICRM-ARTIFACT
ARTIFACT:         MICRM-PAPER-CH-VALIDATION-v01.md
SUPERSEDES:       MICRM-PAPER-CH-VALIDATION-v01.md 539f4ab88234271ca57d74028e1aff7e343dcac64cb5412257a1fcb3fafad9fa
FILE-THIS-AS:     corpus/paper/
AUTHORED-UNDER:   lane_tooling
INTENDED-REGIME:  declaration
STATUS:           FROZEN, STEP 8 PRESENTATION SUCCESSOR
SOURCE RECORD:    90e79f738306df2888ac089d8cb8ad9efa308adab9993155b03bcca39a2d0aa4
-->


# Validation

## 1. Purpose

This chapter is a transformation of a frozen validation record, cited above by
hash. It is not a fresh interpretation of the validation campaign, and where the
two differ the record governs.

Its purpose is to make MICRM **easier to challenge, easier to reproduce, and
clearer about what remains untested**. It does not argue that the model is sound.
That distinction is not modesty: a model whose central commitment is that
internally ratified findings are not evidence cannot coherently offer its own
internal validation as proof of its correctness.

## 2. Protocol

Fact patterns were authored **outside the lane that wrote the semantics**. Each
was sealed and published by hash, byte count, line count and terminating newline
before the deriving lane read any content, and the deriving lane verified the
seal before reading in every case.

```
rule freezing     every derivation cites the rule-byte hashes it ran against
no amendment      no fact pattern was edited after a result was observed; where a
                  pattern proved insufficient, a successor was sealed and the
                  predecessor derivation retained as the witness
gap discipline    a needed and unwritten rule was recorded and the derivation
                  branch stopped; no rule was invented mid-derivation
```

The separation is the point. The fact author controls the facts and cannot change
them after sealing; the deriving lane controls the application of the model and
cannot change the rules when the facts become inconvenient. That gives the
exercise a real chance to fail, which is what makes a passing result mean
anything.

## 3. What was tested

Five independently authored patterns produced **eleven sealed variants, nine of
them current** — one pattern's two variants were superseded by a successor seal,
and both derivations are retained.

```
Q47 industrial incident                    1 variant
positive root-base microcase               1 variant
WF-T consistency, two support variants     2 variants, superseded
WF-T consistency, successor                2 variants
evidence-universe closure                  3 variants
asserted-mismatch closure matrix           2 variants
                                          ------
                                          11 sealed, 9 current
```

Mechanisms exercised across those variants:

```
representation construction from incompatible alternatives
per-principal closure predicates and endpoint-set logic
the closure matrix at mismatch with corroborated and with asserted support
closure failure held distinct from non-candidacy
asserted mismatch held distinct from closure failure
grounding and admissibility transitions, per representation
the ordered independence rule, first branch and fallthrough
support bases, sufficiency gating, existential aggregation
the asserted aggregation branch with basis-enumeration coverage
root-base termination: well-formedness, scoped assumptions, discharge by
  declaration
the consistency guard at three support levels of a contrary relation
evidence-universe coverage in all three states
outer-to-inner coverage composition
closure of an evidence universe on a beneficiary's own search record
cut-condition geometry, negatively
```

## 4. What was not tested

This section is placed immediately after the tested surface, and at comparable
semantic resolution, so that the boundary of the evidence is visible before any
interpretation of the results.

```
the graph model under load        multi-traversal graphs, cycles as occurrence
                                  chains, uncertain edges, conjunctive joins
                                  with multiplicity

path aggregation                  no path-exclusion or structural-result output
                                  was licensed in any variant; the class layer
                                  never opened

the class layer end to end        class families, the admissibility mask,
                                  refinement coverage and class-sensitivity
                                  reporting were derived as relations once and
                                  never carried to an output

multi-representation candidacy    quantification over the representation family,
                                  necessity and possibility robustness, and
                                  status profiles across more than one retained
                                  representation

attachment and propagation        no attachment instance was ever evaluable, so
                                  the attachment definition, three of the four
                                  cut conditions, and the neutralisation rule
                                  are untested

burdens                           never reached

the overlay interface             no worked handoff

the gate question                 resolved in the semantics, never exercised on
                                  facts

the third mismatch cell           reachable and observed incidentally through an
                                  input defect; not relied upon as evidence
```

**A substantial portion of the model remains untested, including the surfaces
where the reviewer's structural objections originally concentrated.** No
proportion is stated, because none is supported: there is no defined denominator
or coverage metric here, and a count of items would mislead in the other
direction, since the graph model under load encompasses far more semantic surface
than a single matrix cell.

## 5. Defects found

> **The independently authored challenge process found twelve rule defects
> against frozen bytes that the project's self-check did not find.**

Three recurring classes were identified and named during the process:

```
class 1   defined states with no transition into them
class 2   two explicit rules demanding incompatible outputs on the same facts
class 3   circular derivation with an unreachable base case
```

Individually, the twelve included: transitions missing between defined
admissibility states; a base case with no output value; incompatible
representation-construction rules; two live definitions of one predicate; two
live signatures for one unit; an outer population given a boundary requirement
and no state machine; a composition producing a value outside its own state set;
a neutrality guard narrow enough to be bypassed; a state consumed by a downstream
rule and produced by nothing; and a base case that required the result it existed
to terminate.

## 6. Methodological findings

The following are interpretation, and are marked as such.

**On self-checking.** The model states normatively that self-checking is not an
accepted verification method within it, and names the independently authored
worked incident as the external check. This series provides evidence **consistent
with** that position: no defect was found by the project's self-check.
It does not establish a general proposition about external review, and the
observation is scoped strictly to this validation series.

Two subsidiary findings of the same shape are worth recording. A self-check in
one artifact asserted a mechanism that did not exist, in the very section written
to correct a previous self-check error. And of the deriving lane's eighteen recorded errors,
**eleven occurred at a seam between two artifacts** rather than inside one — a
count with its denominator stated, not a proportion.

**On predicted outcomes.** In one variant pair, a result matched its pre-sealed
prediction *for the wrong reason*: the predicted mechanism never ran, and a
different limitation produced the same output. A comparison at the level of
results would have scored that variant a pass.

> **Matching a predicted output is not evidence that the predicted mechanism
> ran.** Every subsequent derivation checked the route as well as the result.

**On transformation.** A correction to a source does not protect a rewrite that
consumes it. During the preparation of this paper, a population-accounting defect
that had been corrected twice in a source artifact was regenerated in a chapter
transcribing the corrected version. Detecting stale text is not the same check as
detecting a regenerated defect, and both are required.

## 7. Reproduction

```
1  obtain the sealed fact pattern and verify its hash, byte count, line count
   and terminating newline
2  obtain the rule-byte generations named in that derivation's input section
3  derive without reading the derivation artifact
4  compare route and result, not result alone
```

Every derivation names the hashes required for this. A reader who disagrees with
an outcome can identify precisely which rule bytes produced it and which facts it
consumed, and can re-derive against the same inputs.

## 8. Standing limitations

```
establishes    that the exercised mechanisms executed as written, on sealed facts,
               against frozen rules
establishes    a reproducible record of what was tested, by whom, against which
               rule bytes, and with which outcomes

does not       establish that MICRM's semantics are correct
does not       establish that the exercised mechanisms are correctly specified
does not       establish that twelve is the number of defects present, only the
               number found
does not       validate any mechanism a passing variant did not reach
does not       establish that the untested surface is sound
```

This chapter and the record it transforms are internal artifacts of the project
they document. **Neither has been independently reproduced by a third party**, and
no finding reported here has been re-derived outside the exchange that produced
it. That is the same limit the model applies to its own findings, applied to its
own validation.

---

*Validation | Eleven variants sealed, twelve defects found, substantial model surface untested*

<!-- MICRM-ARTIFACT
ARTIFACT:         MICRM-PAPER-CH-ADVERSARIAL-v01.md
SUPERSEDES:       MICRM-PAPER-CH-ADVERSARIAL-v01.md de05544c52820db9c4d3ebae6b4ec00c6cdb1d4ed2e32c954b11cd8242b2f2b1
FILE-THIS-AS:     corpus/paper/
AUTHORED-UNDER:   lane_tooling
INTENDED-REGIME:  declaration
STATUS:           FROZEN, STEP 8 PRESENTATION SUCCESSOR
BOUNDARY:         7aee0acfb4e1b60bb08f77192d362367b9847edaa64cb41c1e7995366bef76ac
SOURCE VALIDATION: 90e79f738306df2888ac089d8cb8ad9efa308adab9993155b03bcca39a2d0aa4
-->


# Privacy, Security, and Adversarial Analysis

## 1. Scope

This chapter analyzes the privacy, security, confidentiality and adversarial
properties of the frozen specification. It derives consequences of existing
rules, identifies threats those rules address, identifies threats they do not,
and discusses mitigations as non-normative examples.

**It introduces no rule.** Where analysis reaches a question the specification
does not answer, the chapter records a normative gap and stops. A gap has two
legitimate dispositions — remain an explicit limitation of this revision, or
reopen the specification in a successor generation with the validation debt that
entails — and repair in the paper is not among them.

Every threat below carries one of three statuses:

```
MODELED         the specification gives the threat a formal consequence
ACCOMMODATED    the architecture can represent the situation; no policy for it
                is defined
NOT GOVERNED    named plainly as a limitation
```

Each `MODELED` entry also states **how much of that mechanism validation actually
exercised**, since a formal consequence that was never run is a weaker claim than
one that was.

## 2. Threats the specification models

### 2.1 Control of the evidence by a party the finding benefits

The evidence architecture treats control as a first-class threat rather than a
reliability heuristic. Block 4 §9.1 enumerates the dependency vectors: unilateral
control over generation, retention, disclosure or destruction; shared trust root;
dependent capture; selective schema control; colluding principals; recorder
compromise; forward-integrity failure; and clock control.

Two properties of that treatment matter more than the list.

**Control is evaluated relative to the beneficiary of the specific proposition.**
Block 4 §3 defines the beneficiary population per finding and proposition, so the
same record may be corroborated for one finding and asserted for another because
the interested party differs. A record generated by a principal is **not**
discounted generally; it is discounted for the propositions that principal's
result advances.

**Control is evaluated per support basis, not over a pool.** Block 4 §3.2
identifies the evidence relied upon for a finding, and §3.3 admits only bases that
are sufficient for it. A dependent basis therefore cannot contaminate a finding
that an independent basis establishes, and an analyst cannot quietly retain only
the favourable records.

```
EXERCISED   both directions. One validation variant established a finding through
            an independent basis while a dependent basis for the same proposition
            was present; another established that an interested-only sole basis
            cannot support an adverse finding
```

### 2.2 Withholding, and the difference from destruction

Withholding reaches the specification through two distinct routes, and
collapsing them loses the relation/support split.

> **Established control of withholding or destruction is a dependency question;
> unexplained absence is a coverage question. Neither mechanism detects tampering
> by itself.**

Block 4 §9.1 names beneficiary control over disclosure or destruction as a
dependency vector, and Block 4 §9.3 governs what follows. Where that vector is
present **with corroborated support**, the basis is dependent for propositions
that party's result advances. Where it is present but only asserted, the ordinary
result remains unresolved: a named vector alone does not promote. Where evidence is
merely missing or the population is incompletely known, Block 4 §1.1's completeness
predicate and Block 4 §3.3.2's requirement that the evidence universe be
established rather than declared leave the state unresolved, with closure resting
on a beneficiary's own search record classified as asserted by construction.

The consequence is narrow and worth stating precisely: a party that withholds
evidence does not thereby produce a favourable negative finding, because the
negative finding requires a coverage state that the withholding party's own
account cannot establish.

```
EXERCISED   directly. One variant produced a complete coverage relation with
            asserted support in a world where the bounded environment genuinely
            held nothing else, and no negative finding was licensed
```

### 2.3 Missing assurance, distinguished from compromise

Block 4 §9.1.2 separates the two: a vector is present when its positive predicate
is established, absent when affirmatively excluded, and unresolved otherwise —
including where forward integrity, recorder custody or clock provenance is simply
unestablished. An assurance gap is a blocker rather than a dependency.

This is the property most likely to be lost by an implementer, and it runs in
both directions. Missing assurance does not become evidence of compromise, and
absence of a discovered dependency does not become evidence of independence.

```
EXERCISED   partially. The unresolved and present states were both exercised; the
            affirmatively-absent state was reached only through declaration under
            a trust root, never through affirmative exclusion on evidence
```

### 2.4 Declared trust, and what it concedes

Block 4 §3.4 through §3.4.3 makes the analysis's own axioms explicit. A trust root
identifies records eligible for base-case treatment; scoped assumptions discharge
named prerequisites by declaration; and an analysis declaring no assumptions
derives no corroborated support anywhere.

Two constraints bound what that concession can buy. Block 4 §3.4.3 disqualifies an
assumption that contradicts an affirmatively established relation, in either
support direction, so a declaration can close uncertainty and cannot negate
contrary evidence. And the assumption's scope forms part of the trust root's
identity and appears in the sensitivity record, so a reader rejecting the root can
identify which findings fall with it.

```
EXERCISED   fully, in both directions. One variant produced a corroborated
            finding through the base case on facts that reached independence by
            no other route; another established that a contrary declaration is
            invalidated rather than weighed
```

### 2.5 Conflicting and adversarial records

Block 1 §2.5A places conflict: assertions may coexist in the evidence record,
only compatible instances coexist in one representation, and incompatible
alternatives occupy separate representations. Block 4 §8 characterises the
relationship without selecting between the underlying facts, and permits merging
or subsuming only on corroborated support.

The adversarial consequence is that a party cannot collapse a representation
family by asserting that a conflict does not exist.

```
EXERCISED   partially. Conflict characterisation and its support were exercised;
            merging and subsumption were not
```

## 3. Situations the architecture accommodates without policy

**Restricted and confidential evidence.** Public disclosure is not a specified
prerequisite for evidentiary support, so restricted status alone creates no
modeled rejection condition. How access to or verification of such a record is
authorized remains unspecified, and this chapter does not supply it.

That is the limit of what follows. The specification defines no
confidential-verification protocol, no scoped attestation, no regulator-only
evidence channel and no authorization model for inspection. Candidate work
describing such mechanisms treated them as open construction questions and did not
modify the model.

```
ACCOMMODATED   representable
NOT SPECIFIED  every protocol by which restricted evidence would be verified
```

**Evidence held by a third party.** The dependency vectors of Block 4 §9.1 are
relative to the beneficiary population rather than to custody, so evidence held by
a non-beneficiary custodian is not dependent merely by being held elsewhere.
Whether that custodian will produce it is a question the specification does not
address.

## 4. What the specification does not govern

Named plainly, because the review recommended several of these and recommendation
does not make them part of the model.

```
data minimisation              no rule limits what an analysis may collect or
                               retain about principals or subjects
lawful basis                   no rule conditions processing on a legal ground
retention                      no rule bounds how long evidence records persist
access authorisation           no rule states who may inspect sensitive records
redaction                      no rule defines what may be withheld from a
                               produced record without affecting its support
disclosure sufficiency         no rule states when a privacy-preserving
                               disclosure suffices to establish a finding
confidentiality controls       no rule protects the contents of the evidence
                               spine itself
subject rights                 no rule addresses the interests of persons
                               described by evidence who are not principals
```

### 4.1 The evidence spine is a surveillance surface

This follows from the architecture rather than from any rule in it. An analysis
capable of establishing who caused an outcome across delegation chains requires
records of what systems did, under whose authority, at what times, with what
custody. Some findings require completeness over named evidence populations, which
can create pressure for broader collection.

> **MICRM creates pressure toward evidentiary completeness that can increase
> privacy exposure, while the specification contains no minimisation rule that
> balances the two.**

The relationship is a pressure and not a monotonicity. Block 4 §1.1's coverage
rule makes negative findings depend on a covered population, which rewards
collection; but additional evidence can also surface conflicts, further
beneficiaries, or dependency vectors, and thereby reduce support rather than
increase it. What the specification lacks is any bound on the population's
intrusiveness, and this revision does not supply one.

## 5. Adversarial analysis

Each question is answered from the frozen specification, and each answer states
what an adversary achieves as well as what it does not.

**Can a beneficiary suppress evidence to obtain a favourable finding?** Not a
negative finding. Block 4 §1.1 and §3.3.2 make an absence conclusion depend on a
coverage state the suppressing party cannot establish from its own account. If
suppression succeeds in preventing every sufficient basis from obtaining
**independently corroborated** support, promotion to the requested finding can be
blocked without producing a favourable contrary finding; depending on basis
coverage and the remaining bases, support may remain **asserted** or
**unresolved**. Neither is exoneration. Whether a party can achieve that
suppression is outside what the specification defines.

**Can a beneficiary choose the schema?** Selective schema control is a named
vector in Block 4 §9.1. Where it is **established with corroborated support**,
Block 4 §9.3 returns a dependent basis for propositions that party benefits from;
where it is **asserted only, the result remains unresolved**. In neither case does
the adversary shape the finding — it degrades the evidence, and the degree of
degradation follows the support for the vector rather than the vector alone.

**Can two principals collude?** Colluding principals is a named vector. The
practical limit is that collusion is caught only where the vector is established;
Block 4 §9.1.2 leaves an unestablished collusion relationship unresolved, which
blocks corroboration without proving dependence.

**Can the recorder be compromised?** Recorder compromise and forward-integrity
failure are named vectors in Block 4 §9.1, and Block 4 §9.1.2 separates
established compromise from unestablished integrity, routing the latter to
unresolved with an assurance-gap blocker.

> An undetected compromise is not independently discoverable from the MICRM rules
> themselves. Where the evidence needed to expose it is unavailable, or is trusted
> by declaration under Block 4 §3.4.2, the affected evidence may remain usable
> under the resulting support state. The trust root makes the residual assumptions
> visible; it does not detect or remove the compromise.

**Can a controlled clock alter ordering?** Clock trust is a named vector and Block
1 D11 requires ordering claims to advance a strict partial order, with an ordering
resting on a single principal's clock recorded as not independently supported. Where a
controlled clock is the **sole** evidentiary basis for an ordering, that ordering
is not independently supported. Ordering may still be established on another
independently supported basis — traversal position, generation-then-use, or
trusted time — so control of a clock denies one route to an ordering rather than
all of them.

**Can an interested party certify that the searched universe is complete?** No.
Block 4 §3.3.2 classifies closure resting on a beneficiary's search record as
asserted by construction, and Block 4 §3.3.3 carries that into the inner coverage
relation. This was exercised directly in validation.

**What happens when assurance is simply missing?** The result is unresolved, not
adverse and not favourable. Block 4 §9.1.2 routes assurance gaps to unresolved
with a blocker, and Block 2 §5.3.1 requires every finding interpreting an absence
to consult those blockers.

### 5.1 Denial of corroboration as an adversarial strategy

> Preventing relevant evidence from reaching corroborated support can deny
> promotion to findings without producing a favourable contrary finding. Where the
> means of degradation yields a dependency vector that is **present with
> corroborated support**, Block 4 §9.3 returns a dependent basis; where the vector
> is only asserted, or assurance remains unavailable, the ordinary path can remain
> unresolved.

This is stated as a property of the rules rather than as an optimal strategy. The
specification defines no threat-actor objectives or capabilities, so a claim about
what an adversary *should* prefer would import a model MICRM does not contain.

The cost of that conservatism is that a sufficiently uncooperative environment
yields an analysis in which little is promoted to a finding. The Q47 rerun
illustrates the operational consequence, though **for a different reason**: its
sealed input fails the trust-root well-formedness condition, so no corroborated
support is derivable and promotion stops. That is an input defect rather than an
adversarial one, and it is offered as an illustration of the consequence, not as
an instance of the strategy.

## 6. Review blockers

```
3.12  evidence independence threat model
      ADDRESSED. The threat model entered the formal architecture during Step 1
      as Block 4 §9.1's vectors with §9.1.2's transition, §3's
      proposition-relative beneficiary population, and §3.4's declared trust
      root. §2 above states what each does and how much validation exercised it

3.13  privacy, confidentiality, evidence security
      ADDRESSED ANALYTICALLY, NOT RESOLVED NORMATIVELY. The evidence
      architecture creates privacy and confidentiality requirements that this
      revision does not formalize. §4 names them individually and §4.1 states
      the structural tension
```

Recording 3.13 this way is a result rather than a deferral. A half-specified
privacy model entering the revision after validation closed would be the first
normative content in the model with no sealed variant behind it.

## 7. Normative gaps

Recorded, not repaired.

```
GAP-P1   no confidential-verification protocol for restricted evidence
GAP-P2   no authorization model for inspecting sensitive records
GAP-P3   no redaction semantics: the effect of withholding part of a produced
         record on its support state is undefined
GAP-P4   no disclosure-sufficiency rule for privacy-preserving production
GAP-P5   no retention, minimisation or lawful-basis constraints
GAP-P6   no confidentiality requirement on the evidence spine itself
GAP-P7   no treatment of persons described by evidence who are not principals
```

Each has the same two dispositions available: explicit limitation of this
revision, or a successor specification generation with new validation debt.
**None is repaired here.**

## 8. Limitations of this chapter

```
analysis only     no rule was introduced; the specification is unchanged by this
                  chapter
exercise varies   several modeled mechanisms were exercised only partially, and
                  each section states which
untested surface  the untested surfaces recorded in the validation chapter bound
                  this analysis too: an adversarial claim about a mechanism
                  validation never ran is an argument from the specification, not
                  from evidence
not adversarial   no adversary attempted to defeat the model outside the sealed
  testing         variants; the analysis in §5 is derivation, not red-teaming
```

---

*Privacy and adversarial analysis | Pressure toward evidentiary completeness, and no minimisation rule to balance it*

<!-- MICRM-ARTIFACT
ARTIFACT:         MICRM-PAPER-FIGURES-v01.md
SUPERSEDES:       MICRM-PAPER-FIGURES-v01.md 13ab8013997fd2929092675c0cf12c72055fcd6ab16a4c88100da51e0513d5bd
FILE-THIS-AS:     corpus/paper/
AUTHORED-UNDER:   lane_tooling
INTENDED-REGIME:  declaration
STATUS:           FROZEN, STEP 8 PRESENTATION SUCCESSOR
DERIVED FROM:     B1 3b850a77a1e199a5f5c45b50d85f284353f770fbebb6deb43a53d4d5e9e391c1
                  B2 44b780353674c0202e004362e1613dc513c39cf4a0658caac2b4310ce333be64
                  B3 f5ec01de7e4dfb5d81b7b506e7ceb680f2bfcb1a79376456ffee2f5f66c71cb8
                  B4 cbae193958c20f9cd01c142cfb18e10881a21b126da4881b884a6cb140a8f1bc
-->


# Figures

Each figure is derived from the specification generations named above. **No figure
was derived from chapter prose**, and the equivalence record accompanying this set
was built from the specification independently rather than by reading these
figures back.

**Arrow labelling rule.** Every arrow that crosses a semantic stage labels each
premise the transition consumes. Where a figure would otherwise render
`PRESENT → DEPENDENT`, it renders the full premise, because the shorter arrow
fits better and that is exactly how the collapse enters.

---

## Figure 1 — Independence result per support basis

Derived from B4 §9.3 and §§3.4.1–3.4.2.

```
                        ┌──────────────────────────────┐
   support basis W ────► │ any result-relevant vector   │
                        │ for W is PRESENT             │
                        │            +                 │
                        │      CORROBORATED[T]         │
                        └──────────────┬───────────────┘
                            yes │      │ no
                                ▼      ▼
                       DEPENDENT(W)   ┌─────────────────────────────────┐
                                      │ BENEFICIARY COVERAGE            │
                                      │   COMPLETE + CORROBORATED[T]    │
                                      │ AND DEPENDENCY VECTOR COVERAGE  │
                                      │   COMPLETE + CORROBORATED[T]    │
                                      │ AND every covered vector for W  │
                                      │   ABSENT + CORROBORATED[T]      │
                                      │ AND no covered vector for W     │
                                      │   is UNRESOLVED                 │
                                      └───────┬─────────────┬───────────┘
                                      all yes │             │ otherwise
                                              ▼             ▼
                                    INDEPENDENT(W)    UNRESOLVED(W)
```

**Caption.** The result is ordered and exhaustive. One established dependency
suffices, and incomplete knowledge of another vector does not undo a dependency
already shown. `CORROBORATED[T]` support for a finding requires `INDEPENDENT`
under this result.

**Transitions, stated in text.** ASCII layout expresses a branch spatially, which
no substring check can read. The transitions are therefore also stated so they are
machine-checkable against the specification:

```
T1  if any result-relevant vector for W is PRESENT + CORROBORATED[T] -> DEPENDENT(W)
T2  else if BENEFICIARY COVERAGE COMPLETE + CORROBORATED[T]
         and DEPENDENCY VECTOR COVERAGE COMPLETE + CORROBORATED[T]
         and every covered vector for W ABSENT + CORROBORATED[T]
         and no covered vector for W is UNRESOLVED                   -> INDEPENDENT(W)
T3  else                                                             -> UNRESOLVED(W)
```

**Scope note: this is not the only route to `INDEPENDENT(W)`.** B4 §3.4.1 provides
a second producer:

```
T4  ROOT-ADMITTED(W) AND ROOT-NEUTRAL(W)  ->  INDEPENDENT(W) by declaration
```

**The base case does not traverse the ordinary §9.3 branch. Its `ROOT-NEUTRAL`
prerequisites must instead be established by a terminating support chain or
discharged by an in-scope `T` assumption** — they are not absent. That route is
not drawn above because it is governed by well-formedness conditions on `T` that a
decision diagram would misrepresent as an ordinary branch. **A reader must not
conclude that the four conjuncts are necessary conditions for
`INDEPENDENT(W)`.**

**Rendering note.** The first test is drawn as a single box carrying both
conjuncts rather than as two boxes, because splitting them would permit an arrow
labelled only `PRESENT`.

---

## Figure 2 — Closure status from relation and support

Derived from B2 §4.2 and §4.3.

```
                      evidentiary support
                CORROBORATED   ASSERTED           UNRESOLVED
              ┌──────────────┬──────────────────┬──────────────┐
   MATCH(P)   │  ESTABLISHED │ ASSERTED-CLOSURE │  UNRESOLVED  │
              ├──────────────┼──────────────────┼──────────────┤
MISMATCH(P)   │    FAILED    │ ASSERTED-MISMATCH│  UNRESOLVED  │
              ├──────────────┼──────────────────┼──────────────┤
UNRESOLVED(P) │  UNRESOLVED  │   UNRESOLVED     │  UNRESOLVED  │
              └──────────────┴──────────────────┴──────────────┘
   closure
   relation
```

**Caption.** The relation is defined once, in §4.2; this table only composes it
with support. Support is `CORROBORATED` where all result-relevant closure evidence
— identity, both terminations, and continuity — is supported outside the
unilateral control of any principal whose result it benefits.

**Rendering note.** Drawn as a matrix rather than as arrows so that neither
dimension can be read as producing a status alone. The `ASSERTED-MISMATCH` cell is
the one a shorter rendering would collapse into `FAILED`.

---

## Figure 3 — Candidacy status per traversal occurrence

Derived from B2 §4.1 (the closure-subject admission domain), B2 §5.0–§5.1 (the
material consequence target and the per-traversal candidacy conjunctions) and
B2 §5.3–§5.3.2 (the propagation rule and the representation-level
`NO CANDIDATE PATH` construct).

```
   DOMAIN, B2 §4.1
       P must be an admitted closure subject for τ in Rᵢ.
       A principal that is not an admitted closure subject
           -> takes no closure status over τ
           -> is NOT UNRESOLVED over τ
       Bare principal existence, affiliation, theoretical authority or bare
       nomination does not admit P.

   for each ADMITTED CLOSURE SUBJECT P, traversal τ, representation Rᵢ

   materially_ancestral(τ, Rᵢ)
        │
        ├── affirmatively not ancestral, no live blocker
        │        ────────────────────────────►  no status from this traversal
        │
        ├── ancestry unresolved, or an antecedent unresolved
        │        ────────────────────────────►  no status entry; blocker carried
        │                                       into B(P, Rᵢ). Downstream absence
        │                                       findings must consult B and may
        │                                       not read this silence as exclusion
        │
        └── materially ancestral ──► closure(P, τ, Rᵢ) = ?
                         │
                         ├─ ESTABLISHED ──────►  ESTABLISHED CANDIDATE
                         │
                         ├─ UNRESOLVED    ┐
                         ├─ ASSERTED-CLOSURE  ├─►  UNRESOLVED-CLOSURE CANDIDATE
                         ├─ ASSERTED-MISMATCH ┘
                         │
                         └─ FAILED ───────────►  CLOSURE FAILURE

   NO CANDIDATE PATH is NOT a per-traversal status. It is a
   representation-level finding over the whole profile, derived in §5.3.2:

       NO CANDIDATE PATH(P, Rᵢ)
           S(P, Rᵢ) = ∅
           AND B(P, Rᵢ) contains no result-relevant blocker capable of
               producing a candidacy entry for P
```

**Branches and transitions, stated in text.** Multi-column ASCII interleaves an
annotation with the line it annotates, which no substring check can read.

```
B1  affirmatively not materially ancestral, with no live result-relevant blocker
        -> no status from this traversal
B2  ancestry unresolved, or an antecedent required to construct it unresolved
        -> no status entry, AND the blocker is carried into B(P, Rᵢ)
B3  materially ancestral to the selected material consequence target
        -> evaluate closure(P, τ, Rᵢ)

T1  materially_ancestral(τ, Rᵢ) AND closure(P, τ, Rᵢ) = ESTABLISHED
        -> ESTABLISHED CANDIDATE(P, τ, Rᵢ)
T2  materially_ancestral(τ, Rᵢ) AND closure(P, τ, Rᵢ) ∈ {UNRESOLVED,
    ASSERTED-CLOSURE, ASSERTED-MISMATCH}
        -> UNRESOLVED-CLOSURE CANDIDATE(P, τ, Rᵢ)
T3  materially_ancestral(τ, Rᵢ) AND closure(P, τ, Rᵢ) = FAILED
        -> CLOSURE FAILURE(P, τ, Rᵢ)
```

**Caption.** Candidacy is anchored on the traversal, not on principal
attribution. **Every candidacy-status transition** consumes both premises:
material ancestry **and** a closure status. That covers T1 through T3 only — the
domain rule can terminate before ancestry is evaluated, and B1 and B2 terminate
before closure is evaluated.

**The admission domain comes first.** Without it, an arbitrary principal could be
nominated, found unestablished, and returned as an `UNRESOLVED-CLOSURE CANDIDATE`
over any materially ancestral traversal — the amplification route B2 §4.1 exists
to close. A non-subject takes **no status**, which is not the same as an
unresolved one.

**The ancestry test is not a boolean.** A prior rendering drew it as `yes`/`no`,
which permits *ancestry not established* to be read as *ancestry absent*. A
subsequent rendering used `ESTABLISHED TRUE / FALSE / UNRESOLVED`, which is
**notation this figure introduced and the specification does not define** — the
specification gives `materially_ancestral` as a predicate and handles its absence
through the blocker rule, and the corroborated/asserted/unresolved vocabulary
belongs to relation instances rather than to this derived predicate. The branches
are now described in the specification's own terms. B2
§5.3.1 governs: every result that interprets an absence must consult `B`, and this
covers the absence of any antecedent required to construct an entry — including a
materially ancestral traversal. An unresolved antecedent produces no status entry
**and** carries a blocker, so a downstream finding cannot treat the silence as
exclusion.

**Rendering note.** `NO CANDIDATE PATH` appears only as an exclusion note. Placing
it as a fourth leaf would state a false equivalence with the three per-traversal
statuses, which is the error §5.2 records the prior generation making.

---

## Not included: the two-artifact rule

The specification/paper binding is **not** a Step 7 figure. It derives from the
frozen review disposition rather than from B1-B4, and admitting it here would
break the architecture these figures exist to preserve:

```
STEP 7 semantic figures   <- the normative specification
STEP 8 process diagrams   <- governed production records
```

A category called *figure derived from another source* would reintroduce the
third-transformation problem through a side door. If the binding rule warrants a
diagram in the assembled paper, it belongs to Step 8 under the
production-requirement ledger.

## What these figures deliberately omit

```
representation branching and Γ construction     no figure; the construction rule
                                                is short and a diagram would
                                                suggest an ordering the rule does
                                                not impose

attachment, propagation and cut geometry        no figure; validation never
                                                evaluated an attachment instance,
                                                so a figure would depict untested
                                                machinery at the same visual
                                                weight as tested machinery

coverage composition, outer to inner            no figure; the composition is a
                                                three-line rule and drawing it
                                                risks implying support flows with
                                                the relation
```

Omission is recorded rather than left to inference, so a reader can see which
parts of the model have no visual account.

<!-- MICRM-ARTIFACT
ARTIFACT:         MICRM-PAPER-CH-CONCLUSION-v01.md
SUPERSEDES:       MICRM-PAPER-CH-CONCLUSION-v01.md a78989ca02df1c6a55a80978cd1c91455e567290a5b4b48f5275c282b56bfef2
FILE-THIS-AS:     corpus/paper/
AUTHORED-UNDER:   lane_tooling
INTENDED-REGIME:  declaration
STATUS:           FROZEN, STEP 8 PRESENTATION SUCCESSOR
GOVERNED BY:      e0909c491634c76cabbe1693c14f0317df258be6e4dd339f2d43f32e4c45dfc5
                  90e79f738306df2888ac089d8cb8ad9efa308adab9993155b03bcca39a2d0aa4
                  de05544c52820db9c4d3ebae6b4ec00c6cdb1d4ed2e32c954b11cd8242b2f2b1
-->


# Conclusion

MICRM began with a broad attribution problem: machine-initiated consequences can connect material events, authority relationships, accountability paths, contribution classes, and evidence without making those things equivalent. The resulting reference model keeps those dimensions separate long enough to ask what has actually been established at each stage and what evidentiary warrant supports promotion to a finding.

The contribution that remains after related-work analysis is deliberately narrower than the architecture itself. MICRM does not claim novelty for the underlying traditions it draws from. Its contribution is to operationalize those concerns for machine-initiated consequence attribution through explicit interfaces among material consequence structure, authority and accountability closure, class-sensitive candidacy, and evidentiary warrant. The retained design differences do not carry equal attribution strength, and none is presented as a priority claim.

That narrower claim matters because the validation record also sets a hard ceiling on what this revision can establish. Eleven sealed variants across five independently authored patterns exercised selected parts of the formal semantics and exposed twelve rule defects. The process provides a reproducible account of what was tested against which frozen rule bytes and what happened. It does not establish that MICRM is correct. Substantial semantic surface remains untested, including graph behavior under load, end-to-end class behavior, multi-representation candidacy, attachment and propagation, burdens, and the overlay interface.

The privacy and adversarial analysis imposes another boundary. MICRM's evidentiary architecture can create pressure toward increasingly complete records at the same time that those records may contain sensitive information. This revision identifies but does not normatively resolve confidential verification, authorization to inspect sensitive evidence, redaction, disclosure sufficiency, retention and minimization, confidentiality of the evidence spine, or the treatment of persons described by evidence who are not principals. Addressing those questions would require successor normative work and new validation debt rather than silently extending the current specification after its validation state was frozen.

The same discipline applies to substrate claims. MICRM is designed for cross-substrate application, but this revision does not establish substrate neutrality. Applicability therefore remains a substrate-specific validation question. The formalism should earn broader claims through cases that exercise the same semantics in materially different environments, not through a change in wording.

MICRM's current value is consequently not that it resolves accountability. It provides a formal place to distinguish material structure from evidentiary warrant, authority from accountability, candidacy from liability, corroboration from assertion, and unresolvedness from exculpation. Those distinctions make disagreement inspectable. A reader can challenge the consequence structure, the closure relation, the support basis, the coverage claim, the governing assumption, or the promotion step without treating disagreement with one as disagreement with all.

That inspectability is also the standard applied to the paper itself. The specification is normative and the paper is expository. No normative MICRM content exists only here, and disagreement between the two makes the paper defective rather than modifying the specification by implication.

The remaining work is therefore evidentiary, formal, and operational rather than rhetorical. Untested mechanisms need deliberate cases. Cross-substrate applicability needs substrate-specific validation. The privacy gaps need either explicit limitation or successor semantics with their own validation. And the presented specification and paper must be bound to a public, hash-addressable release before the reproduction claim becomes independently executable from the published record.

MICRM did not become smaller as those limits were discovered. Its claims became narrower than its architecture. That is the state in which this revision should be evaluated: a formal reference model with explicit boundaries, a validation record built from independently authored sealed patterns and bounded by substantial untested surface, and a set of open questions stated as open rather than converted into conclusions.

<!-- MICRM-ARTIFACT
ARTIFACT:         MICRM-PAPER-APX-PROVENANCE-v01.md
SUPERSEDES:       MICRM-PAPER-APX-PROVENANCE-v01.md 927d2c2f54c1337a0ea212fe916e15e876651018becb6993f10e6016803cc432
FILE-THIS-AS:     corpus/paper/
AUTHORED-UNDER:   lane_tooling
INTENDED-REGIME:  declaration
STATUS:           FROZEN, STEP 8 PRESENTATION SUCCESSOR
-->


# Appendix: Provenance and Reproducibility

## 1. What this appendix is

Version history and the pointers needed to reproduce the record. Nothing here is
evidence for any claim in the paper.

> **Internal review receipts are not validation evidence.** Records of the
> project's own review cycles — disposition memoranda, generation counts, editing
> receipts, acceptance-gate runs — establish that a process occurred. They do not
> establish that its outputs are correct, and they are excluded from the
> validation chapter for that reason. Where they appear below, they appear as
> version history.

That exclusion is not a stylistic preference. A model whose semantics reject
internally ratified findings as support cannot offer its own internal ratification
as support for itself.

## 2. Artifact versions

The specification is normative and the paper is expository. Where they disagree
the specification governs and the paper is defective.

```
SPECIFICATION, formal semantics
  Block 1   graph and consequence model, D9-D17
  Block 2   root, closure and candidacy, D1-D8
  Block 3   attachment, propagation and exclusion, D18-D24
  Block 4   burdens, classes, conflicts and independence, D25-D30

  each block cites its predecessor generation and the generations it inherits;
  the chain resolves in dependency order B1 -> B2 -> B3 -> B4
```

```
PAPER
  related work and differentiation
  validation
  privacy, security and adversarial analysis
  front matter, per the frozen titling decision
```

```
GOVERNING RECORDS, cited by the chapters
  Step 0    terminology collision rulings
  Step 2    authorship protocol; sealed fact patterns; derivations
  Step 3    hypothesis register, with dispositions frozen before the prose
  Step 4    consolidated validation record
  Step 5    normative boundary, frozen before the prose
  titling   title, subtitle and substrate-claim decision
```

The publication archive **will** identify every artifact named above by SHA-256
with byte count, line count and terminating-newline state. Chapters cite the
hashes of the records they transform.

### 2.1 Archive binding **[UNDISCHARGED]**

> **This appendix is not complete for publication until the assembled paper is
> bound to a public artifact archive or repository release.** The final record
> must identify the archive or repository location, the release or commit
> corresponding to the presented specification and paper, the SHA-256 procedure,
> and the hashes of the presented artifacts.
>
> Until that binding exists, the reproduction procedure in §3 is **internally
> specified but not independently executable from the manuscript alone.**

This is stated rather than deferred silently, because the review objection was
specifically that the prior provenance lacked a public repository location, a
commit identifier for the presented document, hashed artifacts, a stated hash
procedure, and a persistent archive. **The procedure below answers the second half
of that objection and not the first.**

## 3. Reproducing the validation record

```
1  obtain a sealed fact pattern and verify its hash, byte count, line count and
   terminating newline
2  obtain the rule-byte generations named in the corresponding derivation's input
   section
3  derive without reading the derivation artifact
4  compare route and result, not result alone
```

Step 4 of that procedure is not a refinement. One sealed variant matched its
pre-registered prediction while the predicted mechanism never ran, and a
comparison at the level of results alone would have scored it a pass.

## 4. Superseded artifacts

Superseded generations are retained rather than deleted, and a successor cites its
predecessor by hash. Two cases in the record are load-bearing and should not be
pruned:

```
a sealed fact pattern superseded by a successor seal
  both derivations are retained; the earlier one is the witness that the earlier
  pattern was insufficient for the property it was built to test

specification generations superseded by repair
  the earlier bytes are what the earlier derivations ran against, and a
  derivation cannot be reproduced against rules that no longer exist
```

## 5. What the archive does not contain

```
raw conversation transcripts of the authoring process
intermediate drafts between sealed or frozen generations
tool output not cited by a governed record
correspondence
```

None is required to reproduce any claim in the paper, and none is offered as
evidence for one.

## 6. Standing limitation

The archive is an internal product of the project it documents. Its completeness
rests on the project's own account, and **no third party has reproduced any
artifact or re-derived any finding in it.**

---

*Provenance | Version history and pointers; a record that a process occurred is not evidence that its outputs are correct*
