# PM Brain Guide

Your markdown-based second brain for product management.

## What is PM Brain?

PM Brain is a memory system that captures, organizes, and maintains product context over time. It's plain markdown files in a folder on your laptop—no cloud, no vector DB, just files you can read, edit, and version control.

## Core Concepts

### The Memory Hierarchy

```
Durable Layer (Long-term)          Working Memory
─────────────────────────          ──────────────
knowledge/                         ingestion/
├── strategy.md                    ├── interviews/
├── product/                       ├── meetings/
├── users/                         ├── market/
├── market/                        └── adhoc/
└── org/                           
                                   source/
hypotheses/                        └── (immutable copies)
└── [feature].md                   

decisions/
└── [date]-[slug].md

stakeholders/
└── [person].md
```

### Provenance: The Trust System

Every claim in your brain carries a provenance tag:

| Tag | Trust Level | Example |
|-----|------------|---------|
| `[ingestion/...]` | Highest | `[ingestion/interviews/2026-04-22-acme.md]` |
| `[source/...]` | High | `[source/interviews/transcript.pdf]` |
| `(stakeholder-verbal, name, date)` | Medium | `(stakeholder-verbal, Jane CTO, 2026-04-15)` |
| `(intuition, PM, date)` | Low (internal) | `(intuition, PM, 2026-04-10)` |
| `(industry-knowledge)` | Low | `(industry-knowledge)` |
| `(chat, no artifact)` | Low | `(chat, no artifact)` |

The vocabulary is enforced. If you heard something from an exec but didn't record it, tag it `(stakeholder-verbal)`. If it's your hunch, tag it `(intuition)`. The system keeps provenance honest.

## The Six Commands

### `/ingest` — Feed Artifacts into the Brain

**What it does:**
Routes artifacts into your brain based on shape detection.

**Input types:**
- **Interview** — Customer calls, user research, sales conversations
- **Meeting** — 1:1s, reviews, roadmap discussions
- **Market** — Competitor articles, screenshots, analyst notes
- **Adhoc** — Quick notes, Slack threads, email insights

**Usage:**
```bash
/ingest
[paste transcript or drag file]
```

**What happens:**
1. Copies original → `source/`
2. Synthesizes → `ingestion/` with tagged observations
3. Promotes patterns → `knowledge/`, `hypotheses/`, `decisions/`, `stakeholders/`
4. Reports what was updated

**Example flow:**
```
Interview transcript
     ↓
source/interviews/2026-04-22-acme.md (immutable)
     ↓
ingestion/interviews/2026-04-22-acme.md (synthesis)
     ↓
knowledge/users/insights.md (promoted pattern)
hypotheses/feature-x.md (evidence added)
stakeholders/john-ops.md (touchpoint logged)
```

### `/prep` — Brief Before Meetings

**What it does:**
One-page brief before meeting a stakeholder.

**Usage:**
```bash
/prep john-cto
```

**Output:**
- Their last touchpoint date
- Open asks from them
- Last unresolved concern
- Suggested questions to ask

**Tip:** After the meeting, `/ingest` the notes to update their file.

### `/review` — Weekly Maintenance Sweep

**What it does:**
Six automated checks across your entire brain.

**The Six Checks:**
1. **Stale knowledge** — Files not updated in 6+ weeks
2. **Stale evidence** — Old market intel, interviews, assumptions
3. **Hypothesis hygiene** — Actives with no evidence, pending decisions
4. **Stakeholder cadence** — High-influence people not touched in 3+ weeks
5. **Knowledge synthesis** — Recurring patterns & contradictions
6. **Archival sweep** — Shipped features, resolved hypotheses

**Usage:**
```bash
/review
```

**When to run:** Every Friday afternoon (20 minutes)

**What it does:**
- Fixes small issues directly
- Drafts larger changes for your approval
- Flags contradictions
- Suggests what to archive

### `/ideate` — Evidence-Based Solution Synthesis

**What it does:**
Surfaces 3-7 solution directions based on accumulated evidence.

**Usage:**
```bash
/ideate How do we reduce churn in onboarding?
```

**What it loads:**
- `knowledge/strategy.md`
- `knowledge/users/insights.md`
- Active `hypotheses/`
- Recent `decisions/`

**Output:**
- 3-7 directions, each tagged with supporting evidence
- Shows where evidence is weak
- Suggests experiments to fill gaps

### `/risk` — Five-Area Risk Scan

**What it does:**
Scans a feature across 5 risk areas, drafts hypothesis stubs for gaps.

**Five risk areas:**
1. **Value** — Will users want this?
2. **Usability** — Can users use this?
3. **Feasibility** — Can we build this?
4. **Viability** — Should we build this?
5. **Other** — Regulatory, partnership, etc.

**Usage:**
```bash
/risk Real-time collaboration feature
```

**Output:**
- Existing hypotheses by risk area
- Evidence gaps identified
- Draft hypothesis stubs for uncovered areas

### `/plan` — Six-Block Execution Plan

**What it does:**
Drafts a structured plan from objective to execution.

**Six blocks:**
1. What we know
2. Assumption vs evidence
3. Who to interview
4. Hypotheses to open
5. Experiments to run
6. Decision points

**Usage:**
```bash
/plan Launch enterprise tier by Q3
```

## File Structure

### knowledge/ — Durable, Synthesized State

```
knowledge/
├── strategy.md               # North-star, priorities, tensions
├── product/
│   ├── metrics.md           # AARRR + north-star
│   ├── features/            # One file per feature
│   └── roadmap.md           # Now / Next / Later
├── users/
│   ├── personas.md
│   ├── segments.md
│   └── insights.md          # Promoted patterns
├── market/
│   ├── landscape.md
│   ├── competitors/
│   └── trends.md
└── org/
    ├── team.md
    ├── rituals.md
    └── tools.md
```

### hypotheses/ — Evidence-Based Beliefs

```
hypotheses/
├── INDEX.md
├── _SCHEMA.md               # Template
└── [feature-slug].md

# Each hypothesis file has 5 risk sections:
## H1. Value risk
**Evidence for:** 0.7
- Row 1 with provenance tag
**Evidence against:** 0.3
**Decision trigger:** if confidence > 0.8...
```

### decisions/ — Append-Only Log

```
decisions/
├── INDEX.md
├── _SCHEMA.md
└── YYYY-MM-DD-slug.md

# Each decision has:
- Status (pending, decided, reversed)
- Driver (what prompted this)
- What we're deciding
- Evidence trail (provenance-tagged)
- **What would reverse this** ← most important field
```

### stakeholders/ — People State

```
stakeholders/
├── INDEX.md
├── _SCHEMA.md
└── [person-slug].md

# Each stakeholder file has:
- Role & influence
- Current asks
- Last unresolved concern
- Touchpoint log with dates
```

## Best Practices

### 1. Ingest Daily

The longer you wait, the more context you lose. Ingest within 24 hours:
- After every customer interview
- After stakeholder 1:1s
- When you see a market signal
- Quick notes from Slack/email

### 2. Run `/review` Weekly

Friday afternoons, 20 minutes. Skip it for a month and the system rots.

### 3. Tag Provenance Honestly

Don't launder intuition through fake `[ingestion/...]` tags. If it's a hunch, tag it `(intuition, PM, date)`. The system values honesty over fake rigor.

### 4. Promote Deliberately

Not every observation becomes knowledge. Promotion requires:
- **Patterns** (3+ independent observations)
- **Contradictions** flagged (don't flatten dissent)
- **Confidence scores** updated with each new evidence row

### 5. Archive Regularly

Shipped features inactive 90+ days? Archive them. Resolved hypotheses? Archive. The brain stays sharp by forgetting the irrelevant.

## Common Patterns

### Pattern: Customer Interview Flow

```bash
# 1. Conduct interview (record it)
# 2. Ingest transcript
/ingest
[paste transcript]

# 3. Check what was promoted
# Look at: ingestion/interviews/[file].md
#         knowledge/users/insights.md
#         hypotheses/[feature].md

# 4. Prep for next interview
/prep [same customer in 4 weeks]
```

### Pattern: Feature Launch Cycle

```bash
# 1. Risk scan before starting
/risk Mobile app feature

# 2. Track hypotheses during development
# (ingestion updates them automatically)

# 3. Log decision to ship
/decide

# 4. Post-launch: ingest metrics
/ingest [analytics snapshot]

# 5. Review hypothesis confirmation
# Check: hypotheses/mobile-app.md
```

### Pattern: Weekly Cadence

```
Monday: /prep for stakeholder 1:1s
Tuesday-Thursday: /ingest artifacts as they come
Friday: /review (full sweep)
```

## Troubleshooting

**"Hooks not validating schemas"**
- Check `.claude/settings.json` exists
- Verify `validate_brain_file.py` is executable
- Ensure Python 3.7+ installed

**"Too many files, context overload"**
- Run `/review` to archive stale content
- Use compression (synthesis of recurring patterns)
- Split large insight files by theme

**"Provenance tags confusing"**
- Start simple: just use `[ingestion/...]` for documented
- Add `(stakeholder-verbal)` when you heard it
- Use `(intuition)` when it's your hunch
- The vocabulary becomes natural after 2 weeks

**"Not sure what to ingest"**
- Ingest everything: interviews, meetings, market signals, quick notes
- Let the brain sort it (shape detection is automatic)
- Over-ingestion is better than under-ingestion

## Next Steps

- [PM Skills Guide](pm-skills-guide.md) - Workflow layer
- [Integration Guide](integration-guide.md) - Using Brain + Skills together
- [Architecture Overview](architecture.md) - How everything fits
