# smart-postmortem-generator — Smart Postmortem Generator

## Meta
- Owner: PM (Incident Response & Collaboration)
- Status: measuring
- Priority: shipped — monitoring quality improvements
- Last updated: 2026-07-11

## Problem

Writing postmortems after incidents was slow and manual — averaging 38 minutes per postmortem. Teams were inconsistent in what they captured, and the quality of root cause analysis varied widely.

## Target users

- Incident owners (engineers, on-call leads)
- Engineering managers reviewing postmortem quality

## Success metrics (measuring)

- **WAU:** 42% weekly adoption among eligible teams ✓ (as of ~2026-06-20 + 3 weeks)
- **Time saved:** 38 min → 14 min postmortem creation time ✓
- **Edit rate:** ~30% of AI-generated content requires manual editing — quality gap
- **Root cause accuracy:** customers report occasional inaccuracies — active quality concern
- CSAT: positive qualitative feedback, but root cause inaccuracy is most-cited issue

## Scope (shipped)

Uses AI to generate first draft from: Slack discussions, incident timeline, logs, user notes.

**Note:** This feature is being incorporated into the AI Incident Copilot (incident-copilot-v1) as one of its four capabilities. The standalone generator is expected to be superseded by the broader Copilot experience. *(Batch C Q3 + confirmation, chat, no artifact)*

## Dependencies

- Priya Nair (AI Eng Lead) — model quality improvements

## Timeline

Shipped approximately 2026-06-20. Active measurement phase.

## Evidence

*(chat, no artifact)* — interview Batch C Q3

## Linked
- Hypotheses: `../../../hypotheses/smart-postmortem-generator.md`
- Decisions: `../../../decisions/` (none yet)
- Stakeholders affected: `../../../stakeholders/priya-nair.md`
- Roadmap: `../roadmap.md`

## Open questions

- What specifically causes root cause inaccuracies? (log quality? timeline gaps? model limitations?)
- Is 30% edit rate acceptable or does it signal a model quality problem that needs resolution before Copilot v1 ships?

## Follow-up after launch

- Monitor root cause accuracy issue. This is a risk inherited by incident-copilot-v1.
- Track 90-day retention of WAU — is 42% stable or declining?
- Model quality improvements are a current engineering priority for Priya Nair.
