# PM Brain Plugin

Initialize and manage your PM Brain - a markdown-native second brain for product operators.

## What is PM Brain?

A structured memory system for product managers, founders, and product leaders. It captures, organizes, and maintains product context over time using plain markdown files.

## Installation

```bash
# Add marketplace
claude plugin marketplace add brainly-io/pm-os

# Install PM Brain plugin
claude plugin install pm-brain@pm-os
```

## Command

### `/pm-brain`

Initialize a new PM Brain in the current directory.

**Usage:**
```
/pm-brain
```

**What it does:**
1. Runs a 5-batch interview about your product
2. Creates complete folder structure
3. Populates templates with your answers
4. Initializes git repository
5. Sets up 6 additional commands for daily use

## After Initialization

Once your brain is set up, you'll have these commands available:

- `/ingest <content>` — Feed meetings, interviews, docs into the brain
- `/prep <stakeholder>` — Brief before meetings
- `/review` — Weekly maintenance sweep
- `/ideate <problem>` — Evidence-based solution synthesis
- `/risk <feature>` — Five-area risk scan
- `/plan <objective>` — Six-block execution plan

## Structure

PM Brain creates this structure:

```
your-brain/
├── knowledge/         # Durable context (strategy, users, market)
├── hypotheses/        # Evidence-tracked assumptions
├── decisions/         # Decision log with reversal conditions
├── stakeholders/      # People context
├── ingestion/         # Working memory
├── source/            # Original artifacts (immutable)
├── rules/             # Your processes
└── maintenance/       # Maintenance logs
```

## Key Principles

- **Local-first**: No cloud, no APIs, works offline
- **Plain markdown**: Readable, editable, version-controlled
- **One product per brain**: Don't mix contexts
- **Maintenance built-in**: Weekly `/review` keeps knowledge fresh
- **Schema-enforced**: Validation hooks prevent drift

## Use Cases

- **Product Managers**: Track context across sprints, maintain stakeholder relationships
- **Founders**: Document strategy, make evidence-based decisions
- **Product Leaders**: Maintain strategic context, review team decisions

## Requirements

- Git
- Python 3.7+ (for schema validation)
- Claude Desktop or Claude Code CLI

## What Makes It Different

- **Not a notes app** — Opinionated structure with maintenance
- **Not a chatbot memory** — Memory lives in your repo
- **Not a vector database** — Plain markdown, grep-able
- **Not autonomous** — Judgment stays with you

## Documentation

See [PM Brain Guide](../../docs/pm-brain-guide.md) for complete documentation.

## License

MIT
