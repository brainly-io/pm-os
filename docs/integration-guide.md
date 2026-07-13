# Integration Guide

How to use PM Brain + PM Skills together effectively.

## The Core Pattern

```
PM Skills (Generate) → PM Brain (Store) → PM Skills (Use Context)
```

PM Skills generates structured output. PM Brain stores it. Future PM Skills commands draw on stored context. This creates a flywheel where your brain gets smarter over time.

## Integration Patterns

### Pattern 1: Discovery → Documentation

**Goal:** Run discovery, store findings, write PRD with context

```bash
# Step 1: Discovery (PM Skills)
/discover AI meeting summarizer for remote teams

# Output: Ideas, assumptions, experiments
# ↓

# Step 2: Store in brain (PM Brain)
/ingest [paste discovery output]

# Brain updates:
# - hypotheses/meeting-summarizer.md (assumptions)
# - knowledge/users/insights.md (user signals)
# ↓

# Step 3: Write PRD with context (PM Skills + Brain)
/write-prd AI meeting summarizer

# Claude automatically:
# - Uses create-prd skill (framework)
# - Loads knowledge/strategy.md (your priorities)
# - Loads hypotheses/meeting-summarizer.md (assumptions)
# - Generates PRD with your context baked in
```

**Why this works:**
- Discovery establishes assumptions
- Brain tracks them with evidence
- PRD references existing hypotheses instead of inventing new ones

---

### Pattern 2: Interview → Synthesis → Planning

**Goal:** Customer interviews inform planning

```bash
# Step 1: Conduct interview, ingest transcript (PM Brain)
/ingest
[paste interview transcript]

# Brain:
# - Copies to source/interviews/
# - Synthesizes to ingestion/interviews/
# - Promotes patterns to knowledge/users/insights.md
# - Strengthens hypothesis evidence
# ↓

# Step 2: Review synthesis
# Look at: ingestion/interviews/2026-04-22-acme.md
# Check: hypotheses/feature-x.md (evidence updated?)
# ↓

# Step 3: Plan next quarter (PM Skills + Brain)
/plan-okrs

# Claude loads:
# - knowledge/strategy.md
# - knowledge/users/insights.md
# - Recent decisions/
# - Active hypotheses/
# Generates OKRs aligned to evidence
```

**Why this works:**
- Raw interviews are synthesized once
- Patterns accumulate in knowledge/
- Planning draws on accumulated evidence, not scattered notes

---

### Pattern 3: Hypothesis Tracking Loop

**Goal:** Track feature hypotheses from ideation through launch

```bash
# Step 1: Risk scan (PM Skills)
/risk Mobile app feature

# Shows hypothesis gaps across 5 risk areas
# ↓

# Step 2: Draft hypotheses (PM Brain)
# Brain auto-creates: hypotheses/mobile-app.md
# ↓

# Step 3: Design experiments (PM Skills)
/discover experiments existing

# Designs tests for top-risk hypotheses
# ↓

# Step 4: Track results (PM Brain)
/ingest [experiment results]

# Updates hypothesis evidence:
# - Evidence for: 0.4 → 0.7
# - Decision trigger: if confidence > 0.8...
# ↓

# Step 5: Make decision when trigger fires (PM Brain)
/decide

# Logs to decisions/ with evidence trail
# ↓

# Step 6: Weekly check (PM Brain)
/review

# Flags:
# - Hypotheses with no evidence in 30+ days
# - Decisions whose reversal condition triggered
```

**Why this works:**
- Hypotheses are explicit, not implicit
- Evidence accrues automatically from ingestion
- Decision triggers are clear

---

### Pattern 4: Stakeholder Cadence

**Goal:** Maintain stakeholder relationships with context

```bash
# Monday: Prep for 1:1s (PM Brain)
/prep john-cto

# Shows:
# - Last touchpoint: 3 weeks ago
# - Open ask: "When will enterprise auth ship?"
# - Last concern: "Performance regression in Q1"
# - Suggested questions
# ↓

# After meeting: Ingest notes (PM Brain)
/ingest
[paste meeting notes]

# Updates:
# - stakeholders/john-cto.md (touchpoint logged)
# - decisions/ (if commitments made)
# - hypotheses/ (if new concerns raised)
# ↓

# Friday: Review cadence (PM Brain)
/review

# Flags:
# - High-influence stakeholders not touched in 3+ weeks
# - Suggests who to reach out to
```

**Why this works:**
- No stakeholder context is lost
- Touchpoints tracked automatically
- Cadence maintained proactively

---

### Pattern 5: Weekly Habit Loop

**Goal:** Sustainable practice

```
Monday:
├── /prep [stakeholder-1]
├── /prep [stakeholder-2]
└── (Meetings with prep context)

Tuesday-Thursday:
├── /ingest (as artifacts arrive)
│   ├── Interview transcripts
│   ├── Meeting notes
│   └── Market signals
└── /discover, /write-prd, /strategy (as needed)

Friday:
└── /review (20-minute sweep)
    ├── Flags stale content
    ├── Suggests updates
    └── Archives resolved items
```

**Why this works:**
- Ingest daily (context stays fresh)
- Review weekly (memory doesn't rot)
- Stakeholder prep is routine, not reactive

---

### Pattern 6: Feature Lifecycle

**Goal:** Track a feature from idea to ship

```bash
# Discovery
/discover [feature idea]
/ingest [discovery output]

# Strategy alignment
/strategy-check [feature]  # Check against strategy.md

# Planning
/write-prd [feature]
/ingest [PRD]

# Execution
/red-team-prd [PRD]  # Adversarial review
/write-stories user  # Break into backlog
/sprint plan

# During development
/ingest [weekly progress updates]
/ingest [user feedback from beta]

# Pre-launch
/pre-mortem [feature]
/risk [feature]

# Post-launch
/ingest [launch metrics]
/ingest [customer reactions]

# Review
/review  # Check hypothesis confirmation
```

**Full audit trail:**
- source/ has every artifact
- ingestion/ has every synthesis
- hypotheses/ tracks evidence
- decisions/ logs commitments
- knowledge/ accumulates patterns

---

## Advanced Patterns

### Context-Aware PRDs

```bash
# Bad: Generic PRD
/write-prd Mobile app

# Good: Context-loaded PRD
# 1. Ensure brain has context
ls knowledge/strategy.md        # ✓ Strategy defined
ls knowledge/users/insights.md  # ✓ User insights
ls hypotheses/mobile-app.md     # ✓ Assumptions tracked

# 2. Write PRD (loads all context automatically)
/write-prd Mobile app

# Result: PRD with:
# - Your north-star metric (from strategy.md)
# - User pain points (from insights.md)
# - Testable assumptions (from hypotheses/)
# - Past decisions (from decisions/)
```

### Cross-Feature Learning

```bash
# Scenario: Feature A and Feature B both have churn hypotheses

# 1. Ingest Feature A learnings
/ingest [Feature A post-launch analysis]

# Brain updates:
# - hypotheses/feature-a.md
# - knowledge/users/insights.md (pattern: "Onboarding friction")

# 2. Plan Feature B (months later)
/risk Feature B

# Claude notices:
# - Similar hypothesis in Feature A
# - Evidence from Feature A already exists
# - Suggests: "Feature A showed onboarding friction causes 40% drop
# (see knowledge/users/insights.md). Consider testing this first."
```

### Strategy Drift Detection

```bash
# Weekly /review catches:
# - Recent decisions diverging from strategy.md
# - Features on roadmap misaligned to north-star
# - Hypotheses contradicting strategic bets

# Flags:
# "Decision 2026-04-15-defer-realtime contradicts Strategy § Priority #2:
# 'Enable real-time collaboration'. Intentional pivot or oversight?"
```

## Best Practices

### 1. Initialize Brain First

Before running PM Skills workflows:
```bash
/pm-brain  # Set up brain
# Answer 5 batches
# Get scaffold
```

Then PM Skills commands will have context to load.

### 2. Ingest Workflow Outputs

After any PM Skills command that generates insights:
```bash
/discover → /ingest [output]
/strategy → /ingest [strategy canvas]
/research-users → /ingest [personas + journey maps]
```

### 3. Let Brain Update Automatically

When you `/ingest`, the brain routes to multiple files:
- One interview can update 6 files
- Don't manually edit—let the system propagate

### 4. Review → Act → Ingest

Weekly review loop:
```bash
/review  # Friday sweep
# ↓ flags issues
[Fix manually or run commands]
# ↓
/ingest [whatever you fixed]  # Store the fix
```

### 5. Trust Provenance Tags

When Claude references evidence, check the tag:
- `[ingestion/...]` → high trust, walk the link
- `(stakeholder-verbal)` → medium trust, verify if needed
- `(intuition)` → low trust, validate soon

## Common Anti-Patterns

### ❌ Running Skills Without Storing

```bash
# Bad
/discover [idea]
[read output, don't ingest]
/write-prd [same idea]
# ↓ PRD has no context from discovery
```

```bash
# Good
/discover [idea]
/ingest [output]
/write-prd [idea]
# ↓ PRD uses discovery context
```

### ❌ Manually Editing Brain Files

```bash
# Bad
vim knowledge/users/insights.md
# [edit directly]
```

```bash
# Good
# Prepare artifact
echo "New insight: Users prefer X" > update.txt
/ingest update.txt
# ↓ Brain updates insights.md with provenance
```

### ❌ Skipping Weekly Review

```
Week 1: ✓ /review
Week 2: ✓ /review
Week 3: [skip]
Week 4: [skip]
# ↓ Stale content accumulates
# ↓ Memory rots
```

### ❌ Over-Promoting

```bash
# Bad: Promote every observation to knowledge/
/ingest [one customer quote]
# ↓ Immediately add to knowledge/users/insights.md

# Good: Wait for patterns
/ingest [customer 1]
/ingest [customer 2]
/ingest [customer 3]
# ↓ After 3 independent observations, promote
```

## Troubleshooting

**"Commands don't use brain context"**
- Check you're in brain directory: `ls .claude/`
- Verify CLAUDE.md exists: `cat CLAUDE.md`
- Check strategy.md populated: `cat knowledge/strategy.md`

**"Too much duplication"**
- Run `/review` → compression pass
- Let brain synthesize recurring patterns
- Archive resolved items

**"Context overload"**
- Brain loads only relevant areas, not everything
- If still heavy, split large insight files by theme
- Archive shipped features 90+ days old

**"Lost track of hypotheses"**
- Check: `hypotheses/INDEX.md`
- Run: `/review` → flags actives with no evidence
- Use: `/risk [feature]` → shows hypothesis coverage

## Next Steps

- [PM Brain Guide](pm-brain-guide.md) - Memory layer details
- [PM Skills Guide](pm-skills-guide.md) - Workflow layer details
- [Architecture Overview](architecture.md) - System design
- [Quickstart Guide](quickstart.md) - Get started
