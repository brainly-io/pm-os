# PM-OS

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![PM Brain](https://img.shields.io/badge/PM%20Brain-included-blue)](https://github.com/phuryn/pm-brain)
[![PM Skills](https://img.shields.io/badge/PM%20Skills-68%20skills%2C%2042%20workflows-green)](https://github.com/phuryn/pm-skills)

**Complete Product Management Operating System** — A unified installation combining PM Brain (memory layer) and PM Skills (workflow layer) for product managers, founders, and product leaders.

## What's Inside

### 🧠 PM Brain — Your Second Brain
A markdown-based memory system that captures, organizes, and maintains product context over time. No cloud, no vector DB, just plain markdown files you can read, edit, and version control.

**What it does:**
- Ingests interviews, meetings, market signals, and documents
- Tracks hypotheses with evidence
- Logs decisions with reversal conditions
- Maintains stakeholder context
- Weekly automated sweeps to keep knowledge fresh

### 🛠️ PM Skills — 68 Skills, 42 Workflows
Structured AI workflows encoding proven PM frameworks from industry experts (Teresa Torres, Marty Cagan, Alberto Savoia, and more).

**9 Plugin Domains:**
- **Product Discovery** (13 skills, 5 commands) — Ideation, experiments, assumption testing
- **Product Strategy** (12 skills, 5 commands) — Vision, business models, competitive analysis
- **Execution** (16 skills, 11 commands) — PRDs, OKRs, roadmaps, sprints
- **Market Research** (7 skills, 3 commands) — Personas, segmentation, journey maps
- **Data Analytics** (3 skills, 3 commands) — SQL, cohort analysis, A/B testing
- **Go-to-Market** (6 skills, 3 commands) — GTM strategy, growth loops, ICPs
- **Marketing & Growth** (5 skills, 2 commands) — Positioning, North Star metrics
- **PM Toolkit** (4 skills, 5 commands) — Resume review, legal docs, proofreading
- **AI Shipping** (2 skills, 5 commands) — Document and audit AI-built code

## Installation

### 🚀 Interactive Install (Easiest)

**Paste this prompt into Claude Desktop and let Claude handle everything:**

```
Help me install PM-OS. IMPORTANT: PM Skills need PM Brain to work - without PM Brain, PM Skills are useless.

Check if brainly-io/pm-os marketplace is added (if not: claude plugin marketplace add brainly-io/pm-os), then ask: A) Install everything (pm-all), B) Only PM Brain, or C) Choose specific plugins.

For Option C: If PM Brain isn't installed, recommend installing it first and explain why. Then show all 9 PM Skills plugins with use cases and commands, let me select which ones.

After installation:
1. List all installed commands
2. If PM Brain installed: "Create empty dir → Open in Claude Desktop Code tab → Run /pm-brain → Answer 5 question batches → Get 6 commands (/ingest, /prep, /review, /ideate, /risk, /plan) → Use daily: /ingest after meetings, /prep before 1:1s, /review Fridays"
3. If PM Skills without PM Brain: Warn that they need brain context, recommend installing PM Brain
4. Give usage examples

Run install commands and guide me through setup.
```

Claude will guide you through the installation interactively. [See full interactive guide](INSTALL.md)

---

### Manual Installation

### Option A: Install Everything (Recommended)

One command installs PM Brain + all 9 PM Skills plugins:

```bash
# Add the marketplace
claude plugin marketplace add brainly-io/pm-os

# Install everything
claude plugin install pm-all@pm-os
```

That's it! You now have:
- ✅ PM Brain skill (for `/pm-brain` initialization)
- ✅ All 68 skills loaded automatically
- ✅ All 42 slash commands available

### Option B: Install Selectively

Install only what you need:

```bash
# Add the marketplace
claude plugin marketplace add brainly-io/pm-os

# Install PM Brain
claude skill install pm-brain@pm-os

# Install specific plugins
claude plugin install pm-execution@pm-os
claude plugin install pm-product-discovery@pm-os
claude plugin install pm-product-strategy@pm-os
# ... install others as needed
```

### Option C: Quick Install Script

```bash
curl -fsSL https://raw.githubusercontent.com/brainly-io/pm-os/main/install.sh | bash
```

## Quick Start

### 1. Initialize Your PM Brain

```bash
# Create a directory for your brain
mkdir ~/my-product-brain
cd ~/my-product-brain

# Start Claude
claude

# Bootstrap your brain
/pm-brain
```

The skill will:
- Ask you 5 batches of questions about your product, team, and processes
- Create the complete folder structure
- Populate templates with your answers
- Set up git and commit

### 2. Use PM Skills Commands

```bash
# Discovery
/discover [your product idea]

# Write a PRD
/write-prd [feature description]

# Create strategy
/strategy [your product]

# Weekly review
/review
```

### 3. Integrate Brain + Skills

```bash
# Run discovery workflow (PM Skills)
/discover AI meeting summarizer for remote teams

# Ingest results into brain (PM Brain)
/ingest [paste discovery output]

# Later, write PRD with accumulated context
/write-prd AI meeting summarizer
# → Uses create-prd skill (framework) + your brain's knowledge
```

## How It Works Together

```
PM Skills (Workflow Layer)          PM Brain (Memory Layer)
────────────────────────            ───────────────────────

/discover                           knowledge/
  ↓ generates insights         →    ├── strategy.md
  ↓ maps assumptions          →     ├── users/insights.md
  ↓ designs experiments       →     └── product/features/
                                    
                                    hypotheses/
                                    ├── [feature].md
                                    └── (evidence tracking)
                                    
/write-prd                          decisions/
  ↓ uses framework            ←     └── [date]-[decision].md
  ↓ loads brain context       ←     
  ↓ generates PRD                   stakeholders/
                                    └── [person].md
/ingest                             
  ↓ routes to brain          →      Weekly /review
  ↓ updates knowledge        →      ↓ sweeps everything
  ↓ strengthens hypotheses   →      ↓ flags stale content
```

**The Pattern:**
1. Use PM Skills to run structured workflows
2. Ingest outputs into PM Brain for memory
3. Brain maintains context across sessions
4. Future workflows draw on accumulated knowledge

## Available Commands

### PM Brain Commands (6)
- `/ingest <artifact>` — Feed interviews, meetings, docs into the brain
- `/prep <stakeholder>` — Brief before meetings
- `/review` — Weekly maintenance sweep
- `/ideate <problem>` — Evidence-based solution synthesis
- `/risk <feature>` — Five-area risk scan
- `/plan <objective>` — Six-block execution plan

### PM Skills Commands (42 across 9 plugins)

**Discovery:**
- `/discover` — Full discovery cycle
- `/brainstorm` — Multi-perspective ideation
- `/triage-requests` — Prioritize feature requests
- `/interview` — Prep scripts or summarize transcripts
- `/setup-metrics` — Design metrics dashboard

**Strategy:**
- `/strategy` — 9-section strategy canvas
- `/business-model` — Explore business models
- `/value-proposition` — JTBD value prop
- `/market-scan` — Macro environment analysis
- `/pricing` — Pricing strategy

**Execution:**
- `/write-prd` — Product requirements document
- `/plan-okrs` — Team OKRs
- `/transform-roadmap` — Outcome-focused roadmap
- `/sprint` — Sprint planning/retro/release
- `/pre-mortem` — Risk analysis
- `/red-team-prd` — Adversarial PRD stress-test
- `/meeting-notes` — Summarize transcripts
- `/stakeholder-map` — Map stakeholders
- `/write-stories` — User/job stories
- `/test-scenarios` — Generate test cases
- `/generate-data` — Create dummy datasets

**Research:**
- `/research-users` — Personas, segments, journey maps
- `/competitive-analysis` — Competitive landscape
- `/analyze-feedback` — Sentiment analysis

**Analytics:**
- `/write-query` — SQL generation
- `/analyze-cohorts` — Cohort analysis
- `/analyze-test` — A/B test analysis

**GTM:**
- `/plan-launch` — Full GTM strategy
- `/growth-strategy` — Growth loops & GTM motions
- `/battlecard` — Competitive battlecard

**Marketing:**
- `/market-product` — Marketing ideas, positioning, naming
- `/north-star` — North Star metric definition

**Toolkit:**
- `/review-resume` — PM resume review
- `/tailor-resume` — Tailor to job description
- `/draft-nda` — NDA drafting
- `/privacy-policy` — Privacy policy generation
- `/proofread` — Grammar and flow check

**AI Shipping:**
- `/ship-check` — Complete shipping packet
- `/document-app` — Reverse-engineer documentation
- `/derive-tests` — Test coverage mapping
- `/security-audit-static` — Security audit
- `/performance-audit-static` — Performance audit

## Architecture

```
pm-os/
├── pm-brain-skill/              # Memory initialization skill
│   ├── prompts/                 # Adaptive reasoning
│   └── scaffold/                # Deterministic templates
│       ├── .claude/
│       │   ├── commands/        # /ingest, /prep, /review, etc.
│       │   └── hooks/           # Schema validation
│       ├── knowledge/           # Durable layer
│       ├── hypotheses/          # Evidence tracking
│       ├── decisions/           # Append-only log
│       ├── stakeholders/        # People state
│       ├── ingestion/           # Working memory
│       └── source/              # Immutable originals
│
└── plugins/                     # PM Skills (9 plugins)
    ├── pm-product-discovery/
    ├── pm-product-strategy/
    ├── pm-execution/
    ├── pm-market-research/
    ├── pm-data-analytics/
    ├── pm-go-to-market/
    ├── pm-marketing-growth/
    ├── pm-toolkit/
    ├── pm-ai-shipping/
    └── pm-all/                  # Meta-plugin for bundled install
```

## Use Cases

### For Product Managers
- Maintain product context across sprints
- Track hypotheses with evidence
- Write PRDs with frameworks
- Run structured discovery
- Keep stakeholder context fresh

### For Founders
- Document product strategy
- Make evidence-based decisions
- Track market insights
- Run lean experiments
- Maintain investor update context

### For Product Leaders
- Maintain strategic context
- Review team decisions with audit trail
- Track org-wide hypotheses
- Run portfolio-level sweeps
- Keep stakeholder relationships mapped

## What Makes This Different

**Not a notes app** — Opinionated structure with maintenance built in

**Not a chatbot with memory** — Memory lives in your repo, not in Claude

**Not a vector database** — Plain markdown, grep-able by you

**Not autonomous PM** — Judgment stays with you, automation handles cross-referencing

**Local-first** — No cloud, no API keys, works offline

## Documentation

- [Architecture Overview](docs/architecture.md)
- [How It Works](docs/how-it-works.md)
- [Integration Guide](docs/integration-guide.md)
- [Examples](docs/examples.md)

## Requirements

- **Claude Code CLI** (for slash commands and hooks)
- **Git** (for version control)
- **Python 3.7+** (for schema validation hooks)

**Note:** Claude Desktop (GUI) has limited support:
- Skills work (manual reference)
- Commands don't work as `/slash-commands` (describe workflows instead)
- Hooks don't auto-run (manual validation)

## Contributing

Contributions welcome! Please:
1. Open an issue first to discuss proposed changes
2. Follow existing commit message style
3. Update tests if applicable
4. Reference original repos for framework/skill changes

See [CONTRIBUTING.md](CONTRIBUTING.md) for details.

## License

[MIT](LICENSE)

## Support

- 🐛 **Bug reports:** [Open an issue](https://github.com/yourusername/pm-os/issues)
- 💡 **Feature requests:** [Open an issue](https://github.com/yourusername/pm-os/issues)
- 📖 **Questions:** [Discussions](https://github.com/yourusername/pm-os/discussions)

---

**Star this repo** ⭐ if it helps you build better products!
