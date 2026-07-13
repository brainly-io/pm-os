# incident-copilot-v1 — AI Incident Copilot

## Meta
- Owner: PM (Incident Response & Collaboration)
- Status: building
- Priority: highest — executive priority this quarter
- Last updated: 2026-07-11

## Problem

Engineering teams responding to incidents lack real-time AI assistance to summarize what's happening, suggest troubleshooting steps, surface relevant historical incidents, and auto-draft postmortems. The smart-postmortem-generator addressed postmortem drafts in isolation; this feature wraps that capability into a broader collaborative AI experience.

## Target users

- Incident commanders
- Site Reliability Engineers (SREs)
- Engineering managers
- On-call engineers

## Success metrics

- 30% weekly active usage among engineering teams within 90 days of launch
- Contribution to reducing median incident resolution time from 52 min → 40 min (north-star: enterprise workspace expansion rate)

## Scope

**V1 scope (as of 2026-07-12 — decision [`decisions/2026-07-12-incident-copilot-v1-scope.md`](../../../decisions/2026-07-12-incident-copilot-v1-scope.md)):**
1. Live incident summaries
2. Similar historical incident retrieval
3. Auto-generated postmortem drafts (incorporating and superseding smart-postmortem-generator)

**Moved to V1.1:** AI troubleshooting recommendations — removed from V1 due to 35% misleading/incomplete rate in internal evaluation. Returns after model improvement reaches < 10% misleading/incomplete.

## Risks

- **Model quality (improved):** Summarization edit rate improved from ~30% to ~12% (internal benchmark, 2026-07-12). Remaining quality risk is on postmortem root cause accuracy.
- **Scope reduction:** troubleshooting recommendations removed from V1 — risk that users perceive V1 as incomplete. Tracked in [`../../../hypotheses/incident-copilot-v1.md`](../../../hypotheses/incident-copilot-v1.md) H-V1.
- Infrastructure cost: David Kim has raised concerns about AI feature complexity and infra costs.

## Dependencies

- Priya Nair (AI Engineering Lead) — leads development
- Sophia Chen — UX for AI features
- Incident Platform squad, AI Experiences squad

## Timeline

Sprint 4 of 6 as of 2026-07-11. Target: end of current sprint cycle.

## Evidence

*(chat, no artifact)* — interview Batch C Q1, Q3

## Linked
- Hypotheses: `../../../hypotheses/incident-copilot-v1.md`
- Decisions: `../../../decisions/` (none yet)
- Stakeholders affected: `../../../stakeholders/priya-nair.md`, `../../../stakeholders/david-kim.md`, `../../../stakeholders/sophia-chen.md`
- Roadmap: `../roadmap.md`

## Open questions

- How do we measure that Copilot v1 meaningfully improves on smart-postmortem-generator's root cause accuracy issue?
- What's the v1 rollout plan — all customers or gated beta?

## Follow-up after launch

- Track WAU weekly. Check-in at 30, 60, 90 days against 30% WAU target.
- Measure postmortem edit rate vs. smart-postmortem-generator baseline (~30%).
- Track TTR impact in Grafana.
