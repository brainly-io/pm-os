# Decision: Remove troubleshooting recommendations from Copilot V1; ship in V1.1

## Status
decided

## Date
2026-07-12

## Context
AI Incident Copilot V1 was originally scoped to include four capabilities: live summaries, similar historical incidents, auto-postmortems, and AI troubleshooting recommendations. An internal engineering evaluation found troubleshooting recommendations at ~35% misleading/incomplete — below an acceptable accuracy bar. The summarization model, by contrast, has improved significantly (edit rate: 30% → 12%). The team faced a fork: ship all four and risk accuracy-driven trust erosion, or scope down V1 to the three reliable capabilities and ship troubleshooting in V1.1.

## Options considered
1. Ship all four V1 capabilities including troubleshooting recommendations at current quality.
2. Remove troubleshooting recommendations from V1; ship live summaries, similar incidents, auto-postmortems; move troubleshooting to V1.1 after model improvement.
3. Delay V1 launch until troubleshooting model reaches acceptable quality.

## Decision
Option 2. Troubleshooting recommendations removed from V1 scope. V1 ships with: live incident summaries, similar historical incidents, AI-generated postmortems.

## Why
Troubleshooting recommendations at 35% misleading/incomplete create a trust risk that outweighs the feature value at launch. Shipping narrow and accurate is better than broad and unreliable — especially for a product category where users act on AI suggestions during live incidents. Keeping the release schedule intact (option 2 vs. option 3) was a secondary factor; CS endorsement of accuracy-first provided cross-functional alignment.

## Evidence
- Internal evaluation: ~35% of troubleshooting suggestions rated misleading or incomplete  [`ingestion/meetings/2026-07-12-ai-copilot-steering.md`](../ingestion/meetings/2026-07-12-ai-copilot-steering.md)
- Internal evaluation: live summarization edit rate improved from ~30% to ~12% — the three remaining V1 capabilities are at acceptable quality  [`ingestion/meetings/2026-07-12-ai-copilot-steering.md`](../ingestion/meetings/2026-07-12-ai-copilot-steering.md)
- CS endorsement: customers consistently value accuracy over feature breadth  `(stakeholder-verbal, Olivia Brooks, 2026-07-12)`
- Engineering assessed: scope change reduces launch risk and preserves release schedule  `(stakeholder-verbal, David Kim, 2026-07-12)`

## Explicitly NOT doing
- Not shipping troubleshooting recommendations at current quality (35% misleading/incomplete)  [`ingestion/meetings/2026-07-12-ai-copilot-steering.md`](../ingestion/meetings/2026-07-12-ai-copilot-steering.md)
- Not delaying V1 launch to wait for troubleshooting model improvement  `(stakeholder-verbal, Emma Rodriguez, 2026-07-12)`

## What would reverse this
Troubleshooting recommendation accuracy reaches < 10% misleading/incomplete on internal evaluation AND at least one customer validation confirms the feature is useful rather than disruptive in live incident context.

## Remaining ambiguities
- "Customers value accuracy over feature breadth" is CS-stated, not yet quantitatively validated with customers post-launch. This assumption drives the decision but hasn't been tested externally.
- Internal benchmark methodology not documented here. The 35% / 12% figures are self-reported from engineering. Worth capturing benchmark methodology before V1.1 evaluation.
- V1.1 timeline for troubleshooting recommendations is not set.

## Linked
- Hypotheses: [`../hypotheses/incident-copilot-v1.md`](../hypotheses/incident-copilot-v1.md)
- Feature: [`../knowledge/product/features/incident-copilot-v1.md`](../knowledge/product/features/incident-copilot-v1.md)
- Strategy: [`../knowledge/strategy.md`](../knowledge/strategy.md) § Priority 3 — AI Incident Copilot
- Stakeholders informed: [`../stakeholders/emma-rodriguez.md`](../stakeholders/emma-rodriguez.md), [`../stakeholders/david-kim.md`](../stakeholders/david-kim.md), [`../stakeholders/priya-nair.md`](../stakeholders/priya-nair.md), [`../stakeholders/olivia-brooks.md`](../stakeholders/olivia-brooks.md)
