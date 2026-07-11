# PM Skills Plugins

This directory contains 9 PM Skills plugins providing 68 skills and 42 workflows.

## Installation

**All plugins:**
```bash
claude plugin install pm-all@pm-os
```

**Individual plugins:**
```bash
claude plugin install pm-execution@pm-os
```

## Plugin Catalog

| Plugin | Skills | Commands | Use When |
|--------|--------|----------|----------|
| **pm-product-discovery** | 13 | 5 | Exploring new ideas, validating assumptions |
| **pm-product-strategy** | 12 | 5 | Defining vision, business model, competitive position |
| **pm-execution** | 16 | 11 | Writing PRDs, planning sprints, managing stakeholders |
| **pm-market-research** | 7 | 3 | Understanding users, sizing markets |
| **pm-data-analytics** | 3 | 3 | Analyzing data, running experiments |
| **pm-go-to-market** | 6 | 3 | Planning launches, defining ICPs |
| **pm-marketing-growth** | 5 | 2 | Positioning products, defining metrics |
| **pm-toolkit** | 4 | 5 | Resume reviews, legal docs, proofreading |
| **pm-ai-shipping** | 2 | 5 | Documenting and auditing AI-built code |

**Total:** 68 skills, 42 commands

## Structure

Each plugin contains:
```
pm-[plugin-name]/
├── .claude-plugin/
│   └── plugin.json       # Metadata
├── README.md             # Plugin documentation
├── skills/               # Reusable knowledge modules
│   └── [skill-name]/
│       └── SKILL.md
└── commands/             # User-triggered workflows
    └── [command-name].md
```

## Meta-Plugin

The `pm-all/` directory is a special meta-plugin that installs all 9 plugins at once.
