# Strategy

> The north star. Loaded at the start of any prioritization, planning, or review task. Updated only deliberately — drift is surfaced, not silently absorbed.

## North-star metric

**Enterprise workspace expansion rate** — the percentage of enterprise customers who roll out Pulse beyond their initial pilot to organization-wide adoption.

- Current value: 28%
- Target (Q3–Q4 2026): 45%
- Definition: enterprise accounts where active seat usage has expanded past the pilot team boundary within 90 days of initial activation.

*(Batch A Q2–Q4, chat, no artifact)*

## 1–2 quarter priorities

1. **Improve Enterprise Adoption** — Increase enterprise workspace expansion rate 28% → 45%. Enterprise customers aren't rolling Pulse out company-wide after initial pilot. Success = expansion rate at 45% end of period. Key bets: SAML SSO improvements, RBAC, admin analytics, onboarding checklists (see [`enterprise-rollout`](./product/features/enterprise-rollout.md)). *(Batch A Q4)*

2. **Reduce Time-to-Resolution** — Reduce median incident resolution time 52 min → 40 min by improving collaboration, AI summaries, and faster access to historical incidents. Success = p50 TTR ≤ 40 min measured in Grafana. Key bets: AI Copilot v1, slack-v3-integration, incident-analytics-redesign. *(Batch A Q4)*

3. **Launch AI Incident Copilot** — Ship AI assistant with live summaries, troubleshooting recommendations, similar-incident retrieval, and auto-postmortem drafts. Success = 30% weekly active usage among engineering teams within 90 days of launch. Copilot wraps and supersedes the standalone smart-postmortem-generator as the broader AI experience. *(Batch A Q4)*

## Explicit non-goals

- TODO: ask PM for explicit non-goals this period (what we are deliberately NOT building or pursuing).

## Bets vs. commitments

- **Bets** (testing): see [`hypotheses/`](../hypotheses/)
- **Commitments** (decided): see [`decisions/`](../decisions/)

## Last reviewed

2026-07-11 (init)

## Tensions

**[OPEN] Copilot vs. Enterprise bandwidth** — AI Incident Copilot is the executive priority and receives the majority of engineering capacity. Enterprise Rollout continues with reduced allocation. If delivery risks emerge, enterprise improvements are more likely to slip than Copilot milestones. This is an acknowledged trade-off, not an accident. *(Batch A Q4 + confirmation, chat, no artifact)*

**[OPEN] Platform reliability underfunding** — platform-reliability-q3 receives ~20–25% of engineering capacity. David Kim advocates for more investment, arguing reliability work is underfunded relative to the feature roadmap. No resolution yet. Risk: reliability debt becomes a customer-facing incident. *(Batch B Q2 + confirmation, chat, no artifact)*
