# Data rules

> Source-of-truth per metric, naming conventions, what counts as evidence.

## Source of truth per metric

| Metric | Canonical source | Notes |
| --- | --- | --- |
| Feature adoption, funnels, retention | Mixpanel | Primary product analytics |
| Service health, API latency, MTTR, uptime | Grafana | Operational metrics |
| Customer support volume, CSAT | Zendesk | Support signal |
| Enterprise pipeline, customer health | HubSpot | CRM |
| Sprint delivery, bug counts | Jira | Engineering delivery |
| Sales call intel, enterprise discovery | Gong | Qualitative sales signal |
| Enterprise workspace expansion rate | HubSpot (primary) + Mixpanel (usage validation) | North-star metric — confirm definition with Olivia Brooks |
| Incident resolution time (MTTR/TTR) | Grafana | Priority 2 target: 52 → 40 min |

*(Batch D Q1)*

## Naming conventions

TODO: confirm Mixpanel event naming conventions and segment definitions with data/eng team.

## Evidence quality

What counts as evidence, by tier:

1. **Direct customer evidence** — quotes, interviews, support tickets, recorded behavior.
2. **Product analytics** — instrumented events, cohort behavior, funnel metrics.
3. **Stakeholder opinions** — internal but informed.
4. **Market / competitor signals** — directional, not definitive.
5. **Internal speculation** — lowest weight. Label as assumption.

**When two tools disagree on the same metric:** treat as a signal, not a margin of error. Investigate before using either number in a decision.

**N matters.** Tag analytics snapshots and exit surveys with actual N. A 12-cohort churn snapshot is a watch item, not a source of confidence.
