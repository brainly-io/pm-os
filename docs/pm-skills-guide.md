# PM Skills Guide

68 skills and 42 workflows for product management.

## What are PM Skills?

PM Skills encode proven PM frameworks (Teresa Torres, Marty Cagan, Alberto Savoia, etc.) into executable workflows. Instead of generic AI outputs, you get structured processes that guide you step-by-step.

## Core Concepts

### Skills vs Commands vs Plugins

**Skills** (68) = Reusable knowledge modules
- Loaded automatically when relevant
- Can be invoked explicitly
- Multiple commands can use the same skill
- Example: `create-prd` skill (8-section PRD template)

**Commands** (42) = User-triggered workflows
- Invoked with `/command-name`
- Chain multiple skills together
- Interactive (ask questions, guide you)
- Example: `/write-prd` command (uses `create-prd` skill)

**Plugins** (9) = Installable bundles
- Group related skills + commands
- Install individually or all at once
- Example: `pm-execution` plugin (16 skills, 11 commands)

### Example Relationship

```
/write-prd command
    ↓ uses
create-prd skill (8-section template)
    ↓ also used by
/red-team-prd command (adversarial review)
```

One skill, multiple commands.

## The 9 Plugins

### 1. Product Discovery (13 skills, 5 commands)

**Use when:** Exploring new ideas, validating assumptions

**Key Commands:**
- `/discover` — Full discovery cycle (ideation → assumptions → experiments)
- `/brainstorm` — Multi-perspective ideation
- `/triage-requests` — Prioritize feature requests
- `/interview` — Prep scripts or summarize transcripts

**Key Skills:**
- opportunity-solution-tree (Teresa Torres framework)
- identify-assumptions-existing/new
- prioritize-assumptions (Impact × Risk matrix)
- brainstorm-experiments (Alberto Savoia pretotypes)

**Example:**
```bash
/discover AI meeting summarizer for remote teams

# Claude will:
# 1. Brainstorm ideas (PM, Designer, Engineer perspectives)
# 2. Map assumptions (Value, Usability, Feasibility, Viability)
# 3. Prioritize by risk
# 4. Design experiments to test top assumptions
```

### 2. Product Strategy (12 skills, 5 commands)

**Use when:** Defining vision, business model, competitive position

**Key Commands:**
- `/strategy` — 9-section Product Strategy Canvas
- `/business-model` — Explore business models
- `/value-proposition` — JTBD value prop
- `/market-scan` — Macro environment (SWOT + PESTLE + Porter's)

**Key Skills:**
- product-strategy (comprehensive canvas)
- lean-canvas, business-model, startup-canvas
- swot-analysis, pestle-analysis, porters-five-forces
- pricing-strategy

**Example:**
```bash
/strategy B2B project management tool

# Claude will guide you through:
# - Vision & mission
# - Target market
# - Value proposition
# - Business model
# - Competitive moats
# - Growth strategy
# - Risks
# - Metrics
# - Roadmap
```

### 3. Execution (16 skills, 11 commands)

**Use when:** Writing PRDs, planning sprints, managing stakeholders

**Key Commands:**
- `/write-prd` — Product requirements document
- `/plan-okrs` — Team OKRs
- `/sprint` — Sprint planning/retro/release
- `/pre-mortem` — Risk analysis
- `/red-team-prd` — Adversarial PRD stress-test
- `/stakeholder-map` — Map stakeholders
- `/write-stories` — User/job stories

**Key Skills:**
- create-prd (8-section template)
- prioritization-frameworks (9 frameworks reference)
- strategy-red-team (adversarial testing)
- stakeholder-map (Power × Interest grid)

**Example:**
```bash
/write-prd Real-time collaboration

# Claude will:
# 1. Ask context questions
# 2. Generate 8-section PRD
# 3. Suggest: "Want me to run a pre-mortem?"
# 4. Save as PRD-realtime-collaboration.md
```

### 4. Market Research (7 skills, 3 commands)

**Use when:** Understanding users, sizing markets

**Key Commands:**
- `/research-users` — Personas, segments, journey maps
- `/competitive-analysis` — Competitive landscape
- `/analyze-feedback` — Sentiment analysis from feedback

**Key Skills:**
- user-personas
- market-sizing (TAM/SAM/SOM)
- customer-journey-map
- competitor-analysis

### 5. Data Analytics (3 skills, 3 commands)

**Use when:** Analyzing data, running experiments

**Key Commands:**
- `/write-query` — SQL generation (BigQuery, PostgreSQL, MySQL)
- `/analyze-cohorts` — Cohort analysis
- `/analyze-test` — A/B test analysis

**Key Skills:**
- sql-queries (natural language to SQL)
- cohort-analysis (retention curves, feature adoption)
- ab-test-analysis (statistical significance, sample size)

**Example:**
```bash
/write-query Show me monthly active users by country for Q4 2025 (BigQuery)

# Claude generates:
SELECT
  country,
  COUNT(DISTINCT user_id) as mau
FROM users
WHERE ...
```

### 6. Go-to-Market (6 skills, 3 commands)

**Use when:** Planning launches, defining ICPs

**Key Commands:**
- `/plan-launch` — Full GTM strategy
- `/growth-strategy` — Growth loops & GTM motions
- `/battlecard` — Competitive battlecard

**Key Skills:**
- gtm-strategy
- beachhead-segment
- ideal-customer-profile
- growth-loops (flywheels)

### 7. Marketing & Growth (5 skills, 2 commands)

**Use when:** Positioning products, defining metrics

**Key Commands:**
- `/market-product` — Marketing ideas, positioning, naming
- `/north-star` — North Star Metric definition

**Key Skills:**
- positioning-ideas
- north-star-metric
- value-prop-statements
- marketing-ideas

### 8. Toolkit (4 skills, 5 commands)

**Use when:** Resume reviews, legal docs, proofreading

**Key Commands:**
- `/review-resume` — PM resume review
- `/tailor-resume` — Tailor to job description
- `/draft-nda` — NDA drafting
- `/proofread` — Grammar and flow check

### 9. AI Shipping (2 skills, 5 commands)

**Use when:** Documenting and auditing AI-built code

**Key Commands:**
- `/ship-check` — Complete shipping packet
- `/document-app` — Reverse-engineer documentation
- `/derive-tests` — Test coverage mapping
- `/security-audit-static` — Security audit
- `/performance-audit-static` — Performance audit

## Command Patterns

### Discovery Commands

```bash
/discover [idea]           # Full cycle
/brainstorm ideas existing # Ideation only
/triage-requests          # Prioritize backlog
```

### Strategy Commands

```bash
/strategy [product]        # Full strategy canvas
/business-model lean      # Lean Canvas
/value-proposition        # JTBD value prop
/market-scan              # SWOT + PESTLE + Porter's
```

### Execution Commands

```bash
/write-prd [feature]      # Generate PRD
/plan-okrs                # Team OKRs
/sprint plan              # Sprint planning
/sprint retro             # Retrospective
/pre-mortem               # Risk analysis
/stakeholder-map          # Map stakeholders
```

### Analytics Commands

```bash
/write-query [question]   # Generate SQL
/analyze-cohorts          # Cohort analysis
/analyze-test             # A/B test results
```

## How Commands Work

### Interactive Flow

Commands ask questions to gather context:

```bash
/write-prd SSO support

Claude:
> What problem does this solve? Who experiences it?
[You answer]

> Which user segments? How many?
[You answer]

> How will we measure success?
[You answer]

# Then generates 8-section PRD
```

### Command Chaining

Commands suggest next steps:

```bash
/discover → suggests: /write-prd
/write-prd → suggests: /pre-mortem, /red-team-prd
/pre-mortem → suggests: /write-stories
```

### Context Awareness

Commands load relevant context:

```bash
/write-prd Mobile app

# Automatically loads (if using PM Brain):
# - knowledge/strategy.md (your priorities)
# - knowledge/users/insights.md (user research)
# - hypotheses/mobile-app.md (assumptions)
# - decisions/* (past decisions)
```

## Using Skills Directly

You can invoke skills without commands:

```bash
"Use the opportunity-solution-tree skill to map our activation problem"

"Apply the prioritization-frameworks skill to these 20 features"

"Use the create-prd skill with this context: [paste]"
```

## Best Practices

### 1. Start with Commands, Learn Skills

Commands guide you. As you get familiar, start invoking skills directly for speed.

### 2. Chain Workflows

Follow the suggested next commands:
```
/discover → /write-prd → /red-team-prd → /write-stories → /sprint plan
```

### 3. Combine with PM Brain

Generate with Skills, store with Brain:
```bash
/discover [idea]
/ingest [output]  # Store in brain
/write-prd [idea]  # Uses brain context
```

### 4. Customize Inputs

Commands accept any input form:
- Feature names: `/write-prd SSO support`
- Problem statements: `/write-prd Users dropping off in onboarding`
- Documents: `/write-prd [upload research doc]`

### 5. Use Frameworks Reference

The `prioritization-frameworks` skill is a reference guide:
```bash
"Which prioritization framework should I use for a 50-item backlog?"
"Explain the Opportunity Score framework"
"Compare ICE vs RICE vs MoSCoW"
```

## Troubleshooting

**"Command not found"**
- Check plugin installed: `claude plugin list`
- Reinstall: `claude plugin install pm-execution@pm-os`

**"Command gives generic output"**
- Provide more context in your prompt
- Upload relevant documents
- Use PM Brain to load persistent context

**"Too many questions"**
- Provide context upfront: `/write-prd [feature] - here's context: [paste]`
- Commands will skip questions you've already answered

**"Which framework to use?"**
- Discovery → Opportunity Solution Tree, Lean experiments
- Strategy → Lean Canvas (startups), Business Model Canvas (mature)
- Execution → RICE (large backlogs), ICE (quick prioritization)
- See `prioritization-frameworks` skill for full guide

## Next Steps

- [PM Brain Guide](pm-brain-guide.md) - Store insights from workflows
- [Integration Guide](integration-guide.md) - Advanced Brain + Skills patterns
- [Architecture Overview](architecture.md) - How everything fits
