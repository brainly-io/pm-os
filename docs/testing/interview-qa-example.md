# PM Brain Interview Responses

---

# Batch A — Context

## Questions

1. What's the company name, product name, and one-line description of what it does?

2. What stage is the product at (pre-PMF / scaling / mature) and what's the rough scale (users, ARR, team size — whatever you know)?

3. Which surfaces, squads, or domains do you own?

4. What are your top 3 strategic priorities for the next 1–2 quarters?

---

## Answers

### Company name, product name, and one-line description

**Company:** Nimbus Labs

**Product:** Pulse

**Description:** Pulse is a B2B SaaS product that helps remote engineering teams manage software incidents, postmortems, and operational knowledge from one collaborative workspace.

---

### Stage and scale

* **Stage:** Scaling (Post-PMF)
* **Customers:** ~450 companies
* **Monthly Active Users:** ~38,000
* **ARR:** ~$4.8M
* **Team Size:** 52 employees
* **Product Team:** 6 PMs, 8 Designers, 24 Engineers across 4 squads

---

### Ownership

I own the **Incident Response & Collaboration** domain.

Responsible for:

* Incident timeline experience
* Slack integration
* AI incident summaries
* Postmortem workflow
* On-call collaboration
* Incident analytics dashboard

I work primarily with:

* Incident Platform squad
* Integrations squad
* AI Experiences squad

---

### Top 3 strategic priorities (next 1–2 quarters)

#### 1. Improve Enterprise Adoption

Current issue:

Enterprise customers aren't rolling Pulse out company-wide after initial pilot.

Goal:

Increase enterprise workspace expansion rate from **28% → 45%**.

---

#### 2. Reduce Time-to-Resolution During Incidents

Current median incident resolution time:

**52 minutes**

Goal:

Reduce to **40 minutes** by improving collaboration, AI summaries, and faster access to historical incidents.

---

#### 3. Launch AI Incident Copilot

Release an AI assistant that can:

* summarize ongoing incidents
* recommend troubleshooting steps
* surface similar historical incidents
* draft postmortems automatically

Success metric:

30% weekly active usage among engineering teams within 90 days.

---

Additional context:

* The AI Copilot is the CEO's top priority, but engineering estimates it will consume 40% of the team's capacity.
* Enterprise customers are requesting SAML SSO and audit logs, which compete for the same engineering resources.
* Sales wants aggressive feature delivery, while Customer Success argues reliability should come first.

---

# Batch B — People

## Questions

1. Name + role of your top 5–10 stakeholders (manager, eng lead, design lead, key execs, key customers if relevant)?

2. Which 2–3 of those are **highest-friction** or **highest-leverage** right now, and why?

3. Any standing 1:1s or rituals worth encoding (weekly syncs, sprint reviews, leadership reviews, etc.)?

---

## Answers

### Top stakeholders

| Name | Role | Relationship |
|------|------|--------------|
| **Emma Rodriguez** | VP of Product (My Manager) | Sets product strategy, quarterly OKRs, roadmap approval |
| **David Kim** | Engineering Manager, Incident Platform | Primary engineering partner for my squad |
| **Sophia Chen** | Staff Product Designer | Leads UX for Incident Response & AI features |
| **Michael Patel** | VP of Engineering | Executive sponsor for platform scalability and reliability |
| **Olivia Brooks** | Head of Customer Success | Brings enterprise customer feedback and escalations |
| **James Walker** | Head of Sales | Represents enterprise deal blockers and feature requests |
| **Priya Nair** | AI Engineering Lead | Leads development of the AI Incident Copilot |
| **Alex Morgan** | CTO at Acme Corp (Design Partner Customer) | Strategic enterprise customer providing early product feedback |

---

### Highest-friction / highest-leverage stakeholders

#### David Kim (Engineering Manager) — Highest Friction

**Why:**

* Pushes back on aggressive delivery timelines.
* Prioritizes technical debt and platform stability over new features.
* Frequently raises concerns about AI feature complexity and infrastructure costs.
* We often negotiate trade-offs between reliability and roadmap commitments.

---

#### James Walker (Head of Sales) — Highest Friction

**Why:**

* Frequently requests customer-specific features for large enterprise deals.
* Pushes for roadmap changes based on short-term revenue opportunities.
* Creates tension between long-term product strategy and immediate sales needs.

---

#### Olivia Brooks (Head of Customer Success) — Highest Leverage

**Why:**

* Has the closest relationship with enterprise customers.
* Provides early warning about churn risks.
* Customer insights heavily influence roadmap prioritization.
* Critical partner for improving enterprise adoption.

---

### Standing meetings and rituals

#### Weekly

* **Monday 10:00 AM** – Incident Platform Squad Planning (60 min)
* **Tuesday 2:00 PM** – 1:1 with David Kim (Engineering Manager)
* **Wednesday 11:00 AM** – Product Leadership Sync
* **Thursday 3:00 PM** – Customer Success Feedback Review
* **Friday 4:00 PM** – Sprint Demo & Retrospective

---

#### Bi-weekly

* AI Copilot Working Group
* Cross-functional Product Design Review
* Enterprise Customer Advisory Call

---

#### Monthly

* Executive Product Review with VP Product and VP Engineering
* Roadmap Alignment Meeting with Sales, Customer Success, and Product Leadership
* Product Metrics & OKR Review

---

# Batch C — Work in Flight

## Questions

1. What features or initiatives are **active** right now? (list 2–6, slug-style is fine)

2. What's the next **big bet** being scoped but not yet started?

3. Anything recently shipped that you're still measuring?

---

## Answers

### Active features / initiatives

#### incident-copilot-v1 *(Highest Priority)*

* Building the first version of the AI Incident Copilot.
* Features include live incident summaries, suggested troubleshooting steps, similar historical incidents, and auto-generated postmortems.
* **Status:** Development (Sprint 4 of 6)

---

#### enterprise-rollout

* Improving enterprise onboarding and organization-wide adoption.
* Includes SAML SSO improvements, role-based permissions, onboarding checklists, and admin analytics.
* **Status:** Development

---

#### slack-v3-integration

* Major upgrade to the Slack integration.
* Adds interactive incident commands, threaded updates, and automatic channel summaries.
* **Status:** Design complete, engineering implementation started.

---

#### incident-analytics-redesign

* Redesigning the analytics dashboard with better MTTR, incident trends, team performance, and custom reporting.
* **Status:** UX validation with pilot customers.

---

#### platform-reliability-q3

* Backend initiative focused on reducing API latency, improving search performance, and increasing service reliability.
* **Status:** Ongoing infrastructure work.

---

### Next big bet (scoping but not started)

#### predictive-incident-prevention

We're exploring an AI-powered feature that predicts high-risk incidents before they occur by analyzing:

* deployment history
* infrastructure metrics
* incident patterns
* service dependencies
* historical postmortems

The vision is to proactively warn engineering teams about likely failures before customers are impacted.

Current stage:

* Discovery
* Customer interviews
* Technical feasibility assessment
* Market research

No engineering work has started yet.

---

### Recently shipped (still being measured)

#### smart-postmortem-generator

Released **3 weeks ago**.

Uses AI to generate the first draft of an incident postmortem from:

* Slack discussions
* Incident timeline
* Logs
* User notes

Current metrics being monitored:

* Adoption rate among incident owners
* Time saved per incident
* Percentage of AI-generated content accepted without edits
* Customer satisfaction (CSAT)
* Weekly active usage

Early results:

* **42%** weekly adoption among eligible teams
* Average postmortem creation time reduced from **38 minutes → 14 minutes**
* AI-generated drafts require approximately **30% manual editing**
* Positive qualitative feedback, but customers report occasional inaccuracies in root cause summaries, making model quality improvements a current priority.

---

# Batch D — Inputs

## Questions

1. What data sources do you touch weekly? (analytics tools, support tickets, sales calls, Slack channels, etc.)

2. Do you run customer interviews? If yes, how often, and where do transcripts live?

3. What competitor or market signals do you track?

---

## Answers

### Data sources I use every week

#### Product Analytics

* **Mixpanel** – Feature adoption, funnels, user retention, activation metrics.
* **Grafana** – Service health, incident frequency, latency, uptime, MTTR dashboards.

#### Customer Support

* **Zendesk** – Customer tickets, bug reports, feature requests, CSAT trends.

#### Engineering

* **Jira** – Sprint progress, backlog, bugs, epics, delivery status.
* **GitHub** – Pull requests, release progress, engineering discussions.
* **Slack** – Daily communication across product and engineering teams.

Primary Slack channels:

* `#incident-platform`
* `#product`
* `#eng-announcements`
* `#customer-feedback`
* `#enterprise-deals`
* `#ai-copilot`

#### Customer Success & Sales

* **HubSpot CRM** – Enterprise pipeline, customer health, expansion opportunities.
* **Gong** – Sales call recordings and enterprise discovery calls.

#### Documentation

* **Notion** – PRDs, roadmaps, meeting notes, product strategy, research repository.
* **Google Drive** – Customer presentations, quarterly planning documents, executive reviews.

---

### Customer interviews

Yes.

I aim to conduct **4–6 customer interviews every month**, with a mix of:

* Enterprise administrators
* Engineering managers
* Site Reliability Engineers (SREs)
* Incident commanders
* Existing power users
* Recently churned customers

Interview recordings are stored in **Zoom**, automatically transcribed, and the transcripts are organized in **Notion** under our Product Research workspace. Key insights are summarized into a shared research repository for the product team.

---

### Competitor and market signals I track

#### Direct Competitors

* PagerDuty
* Atlassian Jira Service Management
* Opsgenie
* FireHydrant
* incident.io

#### Market Signals

Every week I review:

* Product launch announcements from competitors
* Release notes and changelogs
* Enterprise customer win/loss feedback from Sales
* Feature requests from Customer Success
* G2 reviews for both our product and competitors
* Reddit discussions (`r/devops`, `r/sre`, `r/kubernetes`)
* Hacker News discussions around incident management and AI operations
* CNCF ecosystem updates and engineering blogs
* AI tooling announcements relevant to DevOps and incident response

I also maintain a monthly competitor comparison document highlighting new features, pricing changes, positioning shifts, and emerging trends that could impact our roadmap.

---

# Batch E — Operating Preferences

## Questions

1. **Autonomy level:** Should the brain **act and tell** (do the work, then inform you) or **propose and wait** (draft + confirm before writing)?

2. **Maintenance cadence:** Weekly review, on-demand only, or both?

3. Anything explicitly **off-limits** beyond the defaults (PII: addresses, phone numbers, financial details, government IDs, medical info)?

---

## Answers

### Autonomy Level

**Mode:** **Act and Tell**

For routine, reversible operations, I want the brain to act automatically and then inform me of what it changed.

Examples include:

* Ingesting interviews, meeting notes, and research documents
* Updating hypotheses, stakeholders, and knowledge files
* Linking related decisions and evidence
* Summarizing new information
* Identifying contradictions or stale knowledge
* Creating draft plans, risk analyses, and meeting briefs

However, I want explicit confirmation before any irreversible or strategic actions, including:

* Deleting or archiving knowledge
* Modifying historical decisions
* Changing product strategy or OKRs
* Closing or reopening hypotheses
* Overwriting existing evidence
* Making external changes (e.g., updating Jira, Notion, Slack, GitHub)

---

### Maintenance Cadence

**Both Weekly Review and On-Demand**

* **Weekly (`/review`)** every Friday to detect stale knowledge, conflicting evidence, outdated hypotheses, and missing follow-ups.
* **On-demand** reviews whenever significant events occur, such as:

  * Completion of a major feature
  * Quarterly planning
  * Roadmap revisions
  * Strategy changes
  * Executive reviews
  * Large customer escalations

---

### Explicitly Off-Limits

Beyond the default protections for PII, the brain should **never** permanently store:

* Customer passwords, API keys, authentication tokens, or secrets
* Production credentials or infrastructure secrets
* Internal security vulnerabilities until publicly disclosed or resolved
* Employee HR discussions, performance reviews, or compensation information
* Legal investigations or confidential legal documents
* Acquisition, fundraising, or M&A discussions before they become public
* Customer contract terms unless they are directly relevant to product decisions
* Any confidential information marked as **Restricted** or **Need-to-Know**

If sensitive information is required for reasoning during a session, it should be used transiently and excluded from the durable knowledge base unless I explicitly instruct otherwise.