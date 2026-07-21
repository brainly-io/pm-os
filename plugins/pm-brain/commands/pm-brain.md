# PM Brain Initialization

Initialize a PM Brain in the current directory. This command scaffolds a complete markdown-based second brain for product operators (PMs, product leaders, founders).

## What it does

1. **Detects mode**: Greenfield (empty directory) or migration (existing PM artifacts)
2. **Runs interview**: 5 batches of questions about your product, team, and processes
3. **Creates structure**: Complete folder hierarchy with schemas and templates
4. **Populates files**: Fills templates with your interview answers
5. **Initializes git**: Creates first commit
6. **Sets up commands**: Installs `/ingest`, `/prep`, `/review`, `/ideate`, `/risk`, `/plan` commands

## Usage

```
/pm-brain
```

Run this command in an empty directory dedicated to one product.

**Important**: Use one directory per product. Do not mix multiple products in the same brain.

## What gets created

```
your-brain/
├── .claude/
│   ├── commands/          # /ingest, /prep, /review, etc.
│   ├── hooks/             # Schema validation
│   └── settings.json
├── knowledge/
│   ├── strategy.md        # Vision, goals, metrics
│   ├── product/           # Features, roadmap
│   ├── users/             # Personas, segments, insights
│   ├── market/            # Landscape, trends
│   └── org/               # Team, rituals, tools
├── hypotheses/            # Evidence-tracked assumptions
├── decisions/             # Decision log with reversal conditions
├── stakeholders/          # People context
├── ingestion/             # Working memory
├── source/                # Original artifacts
├── rules/                 # Your processes
├── maintenance/           # Maintenance logs
├── INDEX.md               # Brain map
└── README.md              # Usage guide
```

## Interview batches

### Batch 1: Product Basics
- What product are you building?
- What problem does it solve?
- Who are the users?
- What stage is the product in?

### Batch 2: Team & Organization
- Team structure and stakeholders
- Decision-making process
- Meeting rituals

### Batch 3: Strategy & Goals
- Vision and OKRs
- Success metrics
- Competitive landscape

### Batch 4: Users & Market
- User segments and personas
- Market insights
- Pain points

### Batch 5: Processes & Tools
- Development process
- Release cadence
- Tools and challenges

## After initialization

Use these commands daily:

```
/ingest [content]     # After meetings, interviews
/prep [stakeholder]   # Before 1:1s
/review               # Weekly maintenance (Friday)
/ideate [problem]     # Evidence-based ideation
/risk [feature]       # Five-area risk scan
/plan [objective]     # Six-block execution plan
```

## Requirements

- Empty directory (or directory with PM artifacts for migration mode)
- Git installed
- Python 3.7+ (for schema validation hooks)

## Tips

- Be thorough in the interview - more context = better brain
- Run `/review` every Friday to keep knowledge fresh
- Ingest regularly - the brain gets smarter with more content
- One product per brain - don't mix contexts

---

**Invoke the pm-brain skill to run the initialization workflow.**
