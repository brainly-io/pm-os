# Quickstart Guide

Get PM-OS running in 5 minutes.

## Prerequisites

- [Claude Code CLI](https://docs.claude.com/cli) installed
- Git installed
- Python 3.7+ (for PM Brain hooks)

## Step 1: Install PM-OS

**Option A: One-command install (Recommended)**
```bash
curl -fsSL https://raw.githubusercontent.com/brainly-io/pm-os/main/install.sh | bash
```

**Option B: Manual install**
```bash
# Add marketplace
claude plugin marketplace add brainly-io/pm-os

# Install everything
claude plugin install pm-all@pm-os
```

## Step 2: Initialize Your PM Brain

```bash
# Create a directory for your brain
mkdir ~/my-product-brain
cd ~/my-product-brain

# Start Claude
claude

# Initialize brain
/pm-brain
```

The brain will ask you 5 batches of questions:
- **Batch A:** Company, product, north-star metric
- **Batch B:** Stakeholders and team
- **Batch C:** Current features and roadmap
- **Batch D:** Processes and tools
- **Batch E:** Preferences (autonomy mode, maintenance schedule)

Answer the questions, and the brain scaffolds your workspace.

## Step 3: Try Your First Commands

### PM Brain Commands

**Ingest an artifact:**
```bash
/ingest
```
Paste a meeting transcript, interview notes, or market signal.

**Prep for a meeting:**
```bash
/prep john-doe
```
Get a brief before meeting with a stakeholder.

**Weekly review:**
```bash
/review
```
Sweep the entire brain, flag stale content, suggest updates.

### PM Skills Commands

**Run discovery:**
```bash
/discover AI meeting summarizer for remote teams
```

**Write a PRD:**
```bash
/write-prd Real-time collaboration feature
```

**Create strategy:**
```bash
/strategy B2B project management tool
```

## Step 4: Integrate Brain + Skills

**Typical workflow:**
```bash
# 1. Run discovery (PM Skills)
/discover Mobile app for our platform

# 2. Ingest results (PM Brain)
/ingest [paste discovery output]

# 3. Write PRD with context (PM Skills + Brain)
/write-prd Mobile app
# → Uses create-prd skill + loads your brain's strategy

# 4. Weekly maintenance (PM Brain)
/review
# → Suggests updates based on new discoveries
```

## Next Steps

- **Learn PM Brain:** Read the [PM Brain Guide](pm-brain-guide.md)
- **Explore PM Skills:** Read the [PM Skills Guide](pm-skills-guide.md)
- **Advanced workflows:** Read the [Integration Guide](integration-guide.md)
- **Understand architecture:** Read the [Architecture Overview](architecture.md)

## Common Issues

**"claude: command not found"**
- Install Claude Code CLI: https://docs.claude.com/cli

**"/pm-brain command not found"**
- Ensure pm-brain skill is installed: `claude skill list`
- Reinstall: `claude skill install pm-brain@pm-os`

**"Hooks not running"**
- Check Python 3.7+ is installed: `python3 --version`
- Verify hooks: `ls -la .claude/hooks/`

## Getting Help

- Check [Documentation Index](README.md)
- Open an [Issue](https://github.com/brainly-io/pm-os/issues)
- Join [Discussions](https://github.com/brainly-io/pm-os/discussions)
