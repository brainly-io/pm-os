# Architecture Overview

PM-OS combines two complementary systems: PM Brain (memory) and PM Skills (workflows).

## System Architecture

```
┌─────────────────────────────────────────────────────────┐
│                        PM-OS                             │
├──────────────────────────┬──────────────────────────────┤
│      PM Brain            │       PM Skills              │
│   (Memory Layer)         │   (Workflow Layer)           │
├──────────────────────────┼──────────────────────────────┤
│                          │                              │
│  knowledge/              │  68 Skills                   │
│  ├── strategy.md         │  ├── Reusable frameworks     │
│  ├── product/            │  ├── Analysis methods        │
│  ├── users/              │  └── Knowledge modules       │
│  ├── market/             │                              │
│  └── org/                │  42 Commands                 │
│                          │  ├── /discover               │
│  hypotheses/             │  ├── /write-prd              │
│  ├── Evidence tracking   │  ├── /strategy               │
│  └── Confidence scoring  │  └── ... (39 more)           │
│                          │                              │
│  decisions/              │  9 Plugins                   │
│  └── Append-only log     │  ├── Discovery               │
│                          │  ├── Strategy                │
│  stakeholders/           │  ├── Execution               │
│  └── People state        │  └── ... (6 more)            │
│                          │                              │
│  6 Commands              │                              │
│  ├── /ingest             │                              │
│  ├── /prep               │                              │
│  ├── /review             │                              │
│  └── ... (3 more)        │                              │
└──────────────────────────┴──────────────────────────────┘
           ↑                           ↑
           │                           │
           └───────────┬───────────────┘
                       │
              Claude Code CLI
```

## PM Brain: Memory Layer

**Purpose:** Persistent context across sessions

**Key Components:**
- **knowledge/** - Durable, synthesized state
- **hypotheses/** - Evidence-based beliefs
- **decisions/** - Committed choices with reversal conditions
- **stakeholders/** - People state and touchpoints
- **ingestion/** - Working memory (synthesis)
- **source/** - Immutable audit trail

**Core Loop:**
1. Ingest artifact → `source/` (immutable copy)
2. Synthesize → `ingestion/` (observations tagged)
3. Promote → `knowledge/`, `hypotheses/`, `decisions/`, `stakeholders/`
4. Maintain → Weekly `/review` sweep

**Provenance System:**
Every claim carries a source tag:
- `[ingestion/<path>]` - Documented (highest trust)
- `(stakeholder-verbal, name, date)` - Verbal
- `(intuition, PM, date)` - Intuition
- `(industry-knowledge)` - Background

## PM Skills: Workflow Layer

**Purpose:** Guided, repeatable PM workflows

**Architecture:**
- **Skills** (68) - Reusable knowledge modules
  - Loaded automatically when relevant
  - Can be invoked explicitly
  - Multiple commands can use the same skill
  
- **Commands** (42) - User-triggered workflows
  - Invoked with `/command-name`
  - Chain multiple skills together
  - Interactive (ask questions, guide you)

- **Plugins** (9) - Installable bundles
  - Group related skills + commands
  - Install individually or all at once

**Example:**
```
/write-prd command
    ↓ uses
create-prd skill (8-section template)
    ↓ loads
PM Brain strategy.md (your context)
    ↓ generates
Complete PRD
```

## How They Work Together

### Pattern 1: Discovery → Memory

```
PM Skills generates insights
         ↓
/discover [idea]
         ↓
PM Brain stores them
         ↓
/ingest [output]
         ↓
knowledge/ updated
hypotheses/ created
```

### Pattern 2: Memory → Execution

```
PM Brain provides context
         ↓
strategy.md, insights.md loaded
         ↓
PM Skills uses context
         ↓
/write-prd [feature]
         ↓
PRD with your strategy baked in
```

### Pattern 3: Continuous Loop

```
/discover → /ingest → /write-prd → /ingest → /review
    ↓          ↓           ↓          ↓         ↓
  Skills     Brain       Skills     Brain     Brain
```

## Design Decisions

### Why Two Layers?

**PM Brain** solves:
- ❌ Context loss across sessions
- ❌ Forgetting why decisions were made
- ❌ Scattered product knowledge
- ✅ Persistent memory in plain files

**PM Skills** solves:
- ❌ Reinventing PM frameworks each time
- ❌ Inconsistent approach to discovery/planning
- ❌ Generic AI outputs
- ✅ Structured, repeatable workflows

### Why Markdown + Git?

- ✅ Human-readable (grep, edit, read)
- ✅ Version-controlled (git history)
- ✅ No cloud dependency
- ✅ No vector DB complexity
- ✅ Portable across tools

### Why Local-First?

- ✅ Works offline
- ✅ You own the data
- ✅ No API keys needed
- ✅ No privacy concerns
- ✅ Survives tool changes

## Data Flow

```
Input Artifacts
  (transcripts, docs, signals)
         ↓
    /ingest
         ↓
source/ ← immutable copy
         ↓
ingestion/ ← synthesis
         ↓
    Promotion
         ↓
  ┌──────┴───────┬─────────┬──────────┐
  ↓              ↓         ↓          ↓
knowledge/  hypotheses/  decisions/  stakeholders/
  ↓              ↓         ↓          ↓
    Weekly /review sweep
         ↓
  Flags stale content
  Suggests updates
```

## Folder Structure

```
your-product-brain/               (PM Brain instance)
├── .claude/
│   ├── commands/                 (PM Brain commands)
│   └── hooks/                    (Schema validation)
├── knowledge/                    (Durable state)
├── hypotheses/                   (Evidence tracking)
├── decisions/                    (Committed choices)
├── stakeholders/                 (People state)
├── ingestion/                    (Working memory)
└── source/                       (Audit trail)
```

```
~/.claude/skills/pm-brain/        (PM Brain skill - global)
plugins/                          (PM Skills - global)
├── pm-product-discovery/
├── pm-execution/
└── ... (9 plugins total)
```

## When to Use What

| Task | Use | Why |
|------|-----|-----|
| Store interview insights | PM Brain (`/ingest`) | Persistent memory |
| Run structured discovery | PM Skills (`/discover`) | Proven framework |
| Track hypothesis evidence | PM Brain (hypotheses/) | Evidence accrual |
| Write a PRD | PM Skills (`/write-prd`) | Template + your context |
| Log a decision | PM Brain (`/decide`) | Audit trail |
| Weekly maintenance | PM Brain (`/review`) | Keep memory fresh |

## Next Steps

- [PM Brain Guide](pm-brain-guide.md) - Deep dive into memory layer
- [PM Skills Guide](pm-skills-guide.md) - Deep dive into workflow layer
- [Integration Guide](integration-guide.md) - Advanced usage patterns
