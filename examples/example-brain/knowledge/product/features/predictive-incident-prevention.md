# predictive-incident-prevention — Predictive Incident Prevention

## Meta
- Owner: PM (Incident Response & Collaboration)
- Status: scoping
- Priority: next big bet — discovery phase, no engineering started
- Last updated: 2026-07-11

## Problem

Engineering teams are reactive to incidents. By the time an alert fires, customers are already impacted. The hypothesis: analyzing patterns across deployment history, infra metrics, incident history, service dependencies, and postmortems could surface early warnings before failures occur.

## Target users

- SREs
- Engineering managers
- Platform/infrastructure teams

## Success metrics

- TODO: define after discovery (likely: early warning accuracy, false positive rate, TTR reduction for warned incidents)

## Scope (proposed)

AI-powered feature that:
- Analyzes deployment history
- Analyzes infrastructure metrics
- Identifies incident patterns
- Maps service dependencies
- Mines historical postmortems
- Surfaces proactive warnings about likely failures

## Risks

- Technical feasibility: significant unknown — requires correlation across disparate data sources
- False positive rate: wrong predictions erode trust quickly in on-call contexts
- Differentiation: PagerDuty and others are investing in AIOps — is there a Pulse-native angle?

## Dependencies

- Technical feasibility assessment (in progress)
- Customer validation from discovery interviews
- AI Experiences squad (future)

## Timeline

Discovery phase as of 2026-07-11. No engineering work started.

## Evidence

*(chat, no artifact)* — interview Batch C Q2

## Linked
- Hypotheses: `../../../hypotheses/predictive-incident-prevention.md`
- Decisions: `../../../decisions/` (none yet)
- Roadmap: `../roadmap.md`

## Open questions

- What does technical feasibility assessment show? (especially cross-source data access)
- Which customer segment would pay most for this? (SREs vs. managers vs. platform teams)
- How does this differentiate from AIOps features in PagerDuty / Opsgenie?

## Follow-up after discovery

- Decision point: proceed to scoping / park / kill — trigger a decision record.
