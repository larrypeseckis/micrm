# MICRM-v0 — Machine-Initiated Consequence Reference Model

*Author: Larry Peseckis | larrypeseckis.ai*
*Version: v0 (skeleton) | Dated: 2026-07-11*
*Status: Working skeleton. Substrate-neutral reference model. Not for distribution.*

---

## Core Definition

MICRM is a substrate-neutral reference model for describing, governing, evidencing, and assigning accountability for machine-initiated consequence.

The object being governed is not "AI." The object being governed is machine-initiated consequence. AI is one substrate. Cloud automation is one substrate. OT is one substrate. Physical systems are one substrate.

---

## Unit of Analysis

The base unit is one machine-initiated action, represented as one traversal of the stack.

A run is a directed chain or graph of traversals.

- One traversal: one machine-initiated consequence event.
- One run: a directed graph of traversals.
- One incident: a subset of traversals whose consequences matter to the investigation.
- One accountability record: the evidence and authority chain attached to each traversal, plus the run-level graph.

---

## Authority / Accountability Frame

The stack sits inside a single bidirectional frame, not a top layer plus an outer wrapper.

- Authority flows downward into the traversal. (Who permitted this system to act?)
- Accountability flows upward from the consequence. (Who bears the consequence if that permission was wrong?)

**First invariant:** A machine-initiated action is accountable only if its downward authority path and its upward accountability path terminate at the same bonded root. If they do not, the action is orphaned: valid permission, no bound owner. Orphaned actions are unaccountable by construction, regardless of how clean the evidence is.

---

## Traversal Stack

1. Intent / Objective — what goal or instruction initiated the chain?
2. Context / State — what state, data, memory, or sensor input shaped the decision?
3. Action Selection — what did the system choose or generate?
4. Gate / Control — what checked, constrained, delayed, escalated, or modified the action before consequence?
5. Actuation — what actually touched the world?
6. Consequence — what changed?

---

## Evidence Spine

Evidence is emitted across every transition, but evidence strength varies by layer.

- Harder evidence: actuation, consequence, infrastructure state. Independently observable (API called, file changed, payment sent, door opened, drone moved).
- Softer evidence: intent, reasoning, context interpretation, claimed objective. Often self-narrated by the system.
- Danger zone: anywhere the record depends on the agent explaining itself.

The gradient runs backwards from where accountability needs it most: the record is weakest at the top of the stack, where decisions are made, and strongest at the bottom, where consequence lands. Independent-capture effort should be spent at the top.

---

## Residual Dark Surface

Every layer has a capturable surface and a residual dark surface. MICRM does not assume total observability. It requires blind spots to be bounded, disclosed, and reduced where possible.

Per-layer record:
- Layer:
  - observed surface:
  - evidence source:
  - independent corroboration:
  - residual blind spot:
  - confidence:

---

## Run Graph

Multi-step systems are represented as chains of traversals. The consequence of one traversal may become the context of the next. Drift, permission creep, and control erosion are graph-level phenomena, not single-action properties.

Worked example (control erosion as cross-traversal drift):
- Traversal 1: permitted read.
- Traversal 2: inferred credential location.
- Traversal 3: attempted use.
- Traversal 4: substituted authority.
- Traversal 5: destructive act.

Each traversal may look locally defensible. The chain shows the migration.

---

## Substrates (horizontal axis)

The same stack runs across:
- AI / Agentic Systems (LLMs, agents, copilots, planners, tool-using models, autonomous workflows)
- IT / Cloud / Enterprise Automation (CI/CD, IAM, cloud remediation, SOAR, ticketing, SaaS workflows)
- OT / Industrial Control (SCADA, PLCs, ICS, grid, water, manufacturing, building systems)
- Cyber-Physical / Robotic / Kinetic (drones, robots, autonomous vehicles, medical devices, physical access)
- Institutional / Legal / Financial Decision Systems (benefits, credit, insurance, hiring, healthcare eligibility, fraud, legal routing, financial transfers)

---

## Overlays

Legal, regulatory, contractual, safety, and sector-specific regimes attach as authority overlays, not substrates. They bind at the Authority/Accountability frame and vary by substrate and consequence tier. (e.g., CADMA, EU AI Act, sector rules.)

---

## Example placements (grid coordinates)

- RAC: Authority/Gate layer, AI-agent substrate.
- AFR: Evidence spine, AI-agent substrate.
- CORTHEM: Authority/evidence/accountability boundary, AI-governance substrate.
- SCADA safety interlock: Gate layer, OT substrate.
- PLC command: Actuation layer, OT substrate.
- Drone geofence: Gate layer, cyber-physical substrate.
- Cloud IAM policy: Authority/Gate layer, cloud substrate.
- SOAR playbook: Action/Gate layer, enterprise-automation substrate.

---

## Structure summary

- Rows: layers of a traversal (the stack).
- Columns: substrates where those layers appear.
- Frame: Authority (down) / Accountability (up), terminating at a bonded root.
- Spine: evidence and reconstructability across all layers, with a strength gradient and a residual dark surface per layer.
- Overlays: legal/regulatory/contractual regimes attaching at the frame by domain and consequence tier.

---

*MICRM-v0 skeleton. Authored by Larry Peseckis, 2026-07-11. Keep in-pocket architecture (tiering, irreversibility, two-ledger residual, mount-point regime, bonded-root economics) attaches to specific layers in later versions, not part of this skeleton.*
