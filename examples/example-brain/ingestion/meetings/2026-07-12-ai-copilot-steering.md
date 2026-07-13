# Ingestion: AI Copilot Steering Committee — 2026-07-12

Source: [`source/meetings/2026-07-12-ai-copilot-steering.md`](../../source/meetings/2026-07-12-ai-copilot-steering.md)

Attendees: Emma Rodriguez, David Kim, Priya Nair, Olivia Brooks

---

## Observations

**[Observation]** Live incident summarization model improved: manual editing rate dropped from ~30% to ~12% in latest internal benchmark.

**[Observation]** AI troubleshooting recommendations are unreliable: ~35% of suggested actions rated misleading or incomplete in internal evaluation.

**[Decision]** Troubleshooting recommendations removed from Copilot V1. V1 scope is now: live incident summaries, similar historical incidents, AI-generated postmortems. Troubleshooting moves to V1.1.

**[Observation]** Engineering assessed this change reduces launch risk without affecting the current release schedule.

**[Interpretation]** CS support for the scope reduction signals that accuracy-first is a validated customer-facing principle, not just an internal risk preference. Olivia Brooks's explicit endorsement carries weight given her direct customer contact.

**[Assumption]** "Customers consistently value accuracy over feature breadth" — stated by CS but not yet validated quantitatively with post-launch data. Treat as a working assumption until customer feedback on V1 is collected.

## Routing

- Feature scope change → [`knowledge/product/features/incident-copilot-v1.md`](../../knowledge/product/features/incident-copilot-v1.md)
- Scope reduction decision → [`decisions/2026-07-12-incident-copilot-v1-scope.md`](../../decisions/2026-07-12-incident-copilot-v1-scope.md)
- Hypothesis (action item) → [`hypotheses/incident-copilot-v1.md`](../../hypotheses/incident-copilot-v1.md)
- Summarization model improvement → updates smart-postmortem-generator quality tracking ([`knowledge/product/features/smart-postmortem-generator.md`](../../knowledge/product/features/smart-postmortem-generator.md))
- Stakeholders touched: emma-rodriguez, david-kim, priya-nair, olivia-brooks
