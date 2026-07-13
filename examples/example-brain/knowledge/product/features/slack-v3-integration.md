# slack-v3-integration — Slack Integration v3

## Meta
- Owner: PM (Incident Response & Collaboration)
- Status: building
- Priority: medium — supports TTR reduction goal
- Last updated: 2026-07-11

## Problem

Current Slack integration is passive. Engineering teams coordinate incidents in Slack but Pulse doesn't meaningfully participate in that workflow. v3 adds interactive commands, threaded updates, and channel summaries to make Pulse a first-class Slack participant during incidents.

## Target users

- On-call engineers
- Incident commanders
- Engineering teams that run incidents primarily in Slack

## Success metrics

- TODO: define adoption and engagement metrics for v3 commands
- Expected contribution to TTR reduction (52 → 40 min)

## Scope

- Interactive incident commands in Slack
- Threaded incident updates
- Automatic channel summaries

## Risks

- Slack API reliability — integration complexity vs. native Slack expectations
- Scope creep from sales-driven Slack customization requests (James Walker)

## Dependencies

- Integrations squad
- Slack platform / API

## Timeline

Design complete, engineering implementation started as of 2026-07-11.

## Evidence

*(chat, no artifact)* — interview Batch C Q1

## Linked
- Hypotheses: `../../../hypotheses/slack-v3-integration.md`
- Decisions: `../../../decisions/` (none yet)
- Stakeholders affected: `../../../stakeholders/james-walker.md`
- Roadmap: `../roadmap.md`

## Open questions

- Will interactive commands meaningfully reduce coordination overhead vs. current workflow?

## Follow-up after launch

- Measure command adoption rate in Slack.
- Track whether TTR moves among teams with high Slack command usage vs. control.
