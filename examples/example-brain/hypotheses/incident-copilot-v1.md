# Hypotheses — incident-copilot-v1

<!-- Paths in this file are relative to THIS file's location (hypotheses/<slug>.md). -->

## Meta
- Feature: [`../knowledge/product/features/incident-copilot-v1.md`](../knowledge/product/features/incident-copilot-v1.md)
- Status: active
- Created: 2026-07-12
- Last updated: 2026-07-12

---

## Value risk

### H-V1: Customers will perceive strong value from Copilot V1 (live summaries + similar incidents + auto-postmortems) even without troubleshooting recommendations

- **Origin:** proactive — generated from scope decision on 2026-07-12
- **Confidence:** medium
- **Evidence for:**
  - CS stated customers consistently value accuracy over feature breadth — supporting the narrower-but-accurate scope  `(stakeholder-verbal, Olivia Brooks, 2026-07-12)`
  - Smart postmortem generator (auto-postmortem capability) reached 42% WAU and reduced creation time from 38 → 14 min, indicating strong value signal for this sub-capability  [`../ingestion/meetings/2026-07-12-ai-copilot-steering.md`](../ingestion/meetings/2026-07-12-ai-copilot-steering.md)
- **Evidence against:**
  - _(none yet — not yet tested with customers post-scope decision)_
- **Open questions / caveats:**
  - Olivia's "accuracy over breadth" claim is CS-stated, not yet validated directly with end users (SREs, incident commanders). Her read may reflect a subset of customers.
  - The 42% WAU for smart-postmortem-generator is a proxy signal, not a test of the bundled Copilot value. It's possible the value of the bundle is lower than the sum of the parts.
  - What is the minimum viable feature set for customers to feel this is meaningfully different from smart-postmortem-generator alone?
- **Test:** Customer interviews post-V1 launch. Ask: "What did you expect Copilot to do during an incident? What's missing?" Benchmark: < 20% of users spontaneously cite troubleshooting recommendations as a missing critical capability at 30-day check-in.
- **Decision trigger:** Promote if post-launch interviews + WAU data confirm strong adoption with < 20% citing missing troubleshooting as a gap. Demote (and accelerate V1.1) if > 30% of users report the feature feels incomplete without troubleshooting recommendations.
- **Status:** active
- **Resolution:** —

---

### H-V2: The troubleshooting recommendations capability, when shipped in V1.1 at higher accuracy, will drive meaningfully higher WAU than V1 alone

- **Origin:** proactive — implied by the V1.1 roadmap decision
- **Confidence:** low
- **Evidence for:**
  - _(none yet — V1.1 not shipped)_
- **Evidence against:**
  - _(none yet)_
- **Open questions / caveats:**
  - No customer evidence yet on whether troubleshooting recommendations are a high-value capability vs. a "nice to have."
  - Depends on whether the model can reach < 10% misleading/incomplete (the reversal condition in the V1 scope decision).
- **Test:** Post-V1.1 launch: compare WAU cohorts who have access to troubleshooting recommendations vs. V1-only cohort. Also: direct customer interview question on troubleshooting recommendation value.
- **Decision trigger:** Promote if V1.1 WAU shows ≥ 5pp lift over V1 baseline within 60 days. Demote if < 2pp lift.
- **Status:** active
- **Resolution:** —

---

## Feasibility risk

### H-F1: The troubleshooting recommendations model can reach < 10% misleading/incomplete with additional training

- **Origin:** proactive — implied by V1.1 scope commitment
- **Confidence:** low
- **Evidence for:**
  - Summarization model improved from ~30% to ~12% edit rate with additional work — suggests model improvement is achievable in this product context  [`../ingestion/meetings/2026-07-12-ai-copilot-steering.md`](../ingestion/meetings/2026-07-12-ai-copilot-steering.md)
- **Evidence against:**
  - _(none yet)_
- **Open questions / caveats:**
  - Summarization and troubleshooting are different model tasks. Improvement on one doesn't guarantee comparable improvement on the other.
  - No timeline estimate from Priya Nair's team for reaching < 10%.
  - Internal benchmark methodology is undocumented — "35% misleading/incomplete" needs a formal eval framework to track improvement reliably.
- **Test:** Engineering sets a benchmark methodology and re-runs evaluation after each training iteration. Target: < 10% misleading/incomplete before V1.1 ship decision.
- **Decision trigger:** Promote when eval shows < 10% on a documented benchmark. Demote if engineering assessment indicates this target is not reachable without a foundational model change.
- **Status:** active
- **Resolution:** —

---

## Viability risk

### H-B1: Copilot V1 (without troubleshooting) will still achieve 30% WAU target within 90 days

- **Origin:** proactive — scope reduction creates a risk against the WAU success metric
- **Confidence:** medium
- **Evidence for:**
  - Smart postmortem generator reached 42% WAU as a standalone capability, suggesting the auto-postmortem component alone can drive adoption  [`../ingestion/meetings/2026-07-12-ai-copilot-steering.md`](../ingestion/meetings/2026-07-12-ai-copilot-steering.md)
  - CS endorsement of accuracy-first positioning reduces trust-erosion risk that could suppress adoption  `(stakeholder-verbal, Olivia Brooks, 2026-07-12)`
- **Evidence against:**
  - _(none yet)_
- **Open questions / caveats:**
  - 42% WAU for smart-postmortem-generator was for teams that opted in; Copilot V1 may have different rollout dynamics.
  - Live summaries and similar-incident retrieval are untested capabilities — their adoption contribution to WAU is unknown.
- **Test:** Monitor WAU weekly post-launch. Check-in at 30, 60, 90 days.
- **Decision trigger:** Promote if WAU ≥ 30% at 90-day mark. Demote if WAU < 15% at 60-day mark (leading indicator of miss).
- **Status:** active
- **Resolution:** —
