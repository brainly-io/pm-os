# enterprise-rollout — Enterprise Adoption Initiative

## Meta
- Owner: PM (Incident Response & Collaboration)
- Status: building
- Priority: high — Priority 1 strategy goal, but receives reduced engineering allocation behind Copilot
- Last updated: 2026-07-11

## Problem

Enterprise customers aren't rolling Pulse out company-wide after initial pilot. Current workspace expansion rate is 28%; target is 45%. Blockers appear to be: missing enterprise auth (SAML SSO), insufficient role/permission granularity, lack of admin-level analytics, and an unclear onboarding experience for org-wide rollout.

## Target users

- Enterprise admins
- IT/security owners at enterprise customers
- Engineering managers overseeing Pulse deployment

## Success metrics

- Enterprise workspace expansion rate: 28% → 45%
- Admin activation rate (TODO: define baseline)

## Scope

- SAML SSO improvements
- Role-based permissions (RBAC)
- Onboarding checklists for org-wide rollout
- Admin analytics dashboard

## Risks

- Engineering bandwidth: this initiative receives reduced allocation while Copilot is highest priority. If Copilot slips, enterprise-rollout delivery timeline slips too.
- Sales pressure: James Walker may push for customer-specific enterprise features that pull scope.

## Dependencies

- Incident Platform squad (primary)
- Olivia Brooks (CS) — customer requirements and pilot feedback
- James Walker (Sales) — enterprise deal blocker signal

## Timeline

In development as of 2026-07-11. No fixed ship date captured.

## Evidence

*(chat, no artifact)* — interview Batch A Q4, Batch C Q1

## Linked
- Hypotheses: `../../../hypotheses/enterprise-rollout.md`
- Decisions: `../../../decisions/` (none yet)
- Stakeholders affected: `../../../stakeholders/olivia-brooks.md`, `../../../stakeholders/james-walker.md`
- Roadmap: `../roadmap.md`

## Open questions

- Which of the four scope items is the highest-leverage unlocker for expansion rate?
- What do enterprise admins cite as the #1 reason they haven't expanded post-pilot?

## Follow-up after launch

- Measure expansion rate change monthly post-ship.
- Track admin activation rate as a leading indicator.
