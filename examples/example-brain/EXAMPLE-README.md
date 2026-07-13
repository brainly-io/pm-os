# Example PM Brain

This is a fully populated PM Brain instance that demonstrates how the system works in practice.

## What's Inside

This brain contains realistic product management data for a fictional B2B SaaS product:

### Knowledge Base
- **Strategy** - North-star metric, priorities, strategic tensions
- **Product** - Features, metrics, roadmap
- **Users** - Personas, segments, synthesized insights
- **Market** - Competitive landscape, trends
- **Org** - Team structure, rituals, tools

### Active Hypotheses
- Feature assumptions with evidence tracking
- Confidence scoring (0-1 scale)
- Decision triggers documented
- Evidence rows with provenance tags

### Decision History
- Committed decisions with audit trails
- "What would reverse this" conditions
- Evidence links to source artifacts
- Status tracking (pending/decided/reversed)

### Stakeholder Files
- Individual files per stakeholder
- Influence and friction levels
- Touchpoint logs with dates
- Current asks and concerns

### Ingested Artifacts
- Customer interviews (synthesized)
- Internal meetings (key decisions extracted)
- Market signals (competitive moves)
- Ad-hoc notes (quick captures)

### Source Files
- Immutable copies of original artifacts
- Complete audit trail
- Links from ingestion back to source

## How to Use This Example

### Quick Exploration

```bash
# Navigate here
cd examples/example-brain

# Start Claude
claude

# Try these commands:
/review                              # See what needs attention
/prep john-doe                      # Prep for stakeholder meeting
/ideate How to reduce churn         # Get evidence-based ideas
/risk [feature-name]                # Scan feature risks
```

### Browse the Files

```bash
# See the knowledge structure
ls knowledge/
cat knowledge/strategy.md
cat knowledge/users/insights.md

# Check hypothesis evidence
cat hypotheses/*.md

# Review decision history
cat decisions/*.md

# See stakeholder context
ls stakeholders/
cat stakeholders/*.md

# Explore ingested artifacts
ls ingestion/
cat ingestion/interviews/*.md
```

### Test Ingestion

```bash
/ingest

# Then paste something like:
"""
Meeting with Jane (CTO), 2026-07-13

Key points:
- Concerned about performance regression
- Wants enterprise auth by Q3
- Budget approved for 2 additional engineers
"""

# Watch it route to:
# - source/meetings/
# - ingestion/meetings/
# - stakeholders/jane-cto.md
```

### Observe Provenance

Notice how every claim is tagged:

```markdown
# In knowledge/users/insights.md:
"Users prefer weekly digest over daily alerts"
[ingestion/interviews/2026-04-22-acme.md](../ingestion/interviews/2026-04-22-acme.md)

# In hypotheses/feature-x.md:
**Evidence for:** 0.7
- Row 1: [ingestion/...](link)
- Row 2: (stakeholder-verbal, John CTO, 2026-04-10)
- Row 3: (intuition, PM, 2026-04-08)
```

Every claim traces to its source.

## What You'll Learn

### 1. File Organization
See how a real brain structures knowledge across:
- Durable layer (knowledge/, hypotheses/, decisions/)
- Working memory (ingestion/)
- Audit trail (source/)

### 2. Evidence Tracking
Observe how:
- Observations get tagged in ingestion/
- Patterns get promoted to knowledge/
- Hypotheses accumulate evidence
- Confidence scores evolve

### 3. Provenance System
Understand the trust hierarchy:
- `[ingestion/...]` - documented (highest)
- `(stakeholder-verbal)` - heard
- `(intuition, PM)` - hunch

### 4. Decision Logs
See how decisions capture:
- What was decided
- Why (evidence trail)
- What would reverse it (trigger condition)

### 5. Maintenance Patterns
Run `/review` to see:
- Stale content detection
- Hypothesis hygiene checks
- Stakeholder cadence tracking
- Synthesis suggestions

## Using with PM Skills

The example brain provides context for PM Skills commands:

```bash
# Write PRD with existing strategy
/write-prd New feature

# Claude loads:
# - knowledge/strategy.md (your north-star)
# - knowledge/users/insights.md (user needs)
# - hypotheses/ (existing assumptions)
# Result: Context-aware PRD

# Discover with existing insights
/discover Feature improvement

# Claude considers:
# - Past interview insights
# - Market signals
# - Hypothesis patterns
# Result: Evidence-grounded discovery
```

## Starting Your Own Brain

Once you understand this example:

```bash
# Go to your project directory
cd ~/my-product

# Initialize brain
claude
/pm-brain

# Answer 5 batches of questions
# (see docs/testing/interview-qa-example.md for reference)

# Start ingesting your artifacts
/ingest [your first artifact]
```

## Cleaning Up After Testing

This example brain includes a `.git` folder. After testing, you can:

```bash
# Reset to original state
git reset --hard HEAD

# Or delete and re-copy from pm-os repo
cd ..
rm -rf example-brain
# Re-copy from main repo
```

## Related Documentation

- [PM Brain Guide](../../docs/pm-brain-guide.md) - Full command reference
- [Integration Guide](../../docs/integration-guide.md) - Brain + Skills patterns
- [Testing Documentation](../../docs/testing/) - Test cases and validation
- [Quickstart Guide](../../docs/quickstart.md) - Get started quickly
