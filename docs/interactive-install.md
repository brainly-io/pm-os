# Interactive Installation Guide

## One-Prompt Installation

Instead of following manual installation steps, you can paste this single prompt into Claude Desktop and let Claude handle everything:

---

### 🚀 Copy & Paste This Prompt:

```
Help me install PM-OS (Product Management Operating System).

Context: PM-OS provides PM Brain (memory layer) and PM Skills (68 skills, 42 workflows) for product managers.

IMPORTANT: PM Skills require PM Brain to be installed and set up. Without PM Brain, PM Skills are useless as they need the brain's context to work effectively.

Your tasks:
1. Check if the brainly-io/pm-os marketplace is added. If not, add it with: claude plugin marketplace add brainly-io/pm-os

2. Ask me which installation I want:
   A) Everything (PM Brain + all 9 PM Skills plugins) - Recommended for most users
   B) Only PM Brain (memory system only, no workflows)
   C) Custom (I'll choose specific plugins)

3. For Option C:
   - If I haven't installed PM Brain yet, STRONGLY RECOMMEND installing it first (explain why PM Skills need PM Brain)
   - Show me these 9 PM Skills plugins with their use cases:
     
     * pm-product-discovery (13 skills, 5 commands)
       Use case: Run discovery cycles, design experiments, conduct user interviews, validate assumptions
       Commands: /discover, /brainstorm, /triage-requests, /interview, /setup-metrics
     
     * pm-product-strategy (12 skills, 5 commands)
       Use case: Build product strategy, define vision, analyze competition, create business models
       Commands: /strategy, /business-model, /value-proposition, /market-scan, /pricing
     
     * pm-execution (16 skills, 11 commands)
       Use case: Write PRDs, plan OKRs, manage roadmaps, run sprints, conduct pre-mortems
       Commands: /write-prd, /plan-okrs, /transform-roadmap, /sprint, /pre-mortem, /red-team-prd, /meeting-notes, /stakeholder-map, /write-stories, /test-scenarios, /generate-data
     
     * pm-market-research (7 skills, 3 commands)
       Use case: Create personas, segment users, map journeys, analyze competitors
       Commands: /research-users, /competitive-analysis, /analyze-feedback
     
     * pm-data-analytics (3 skills, 3 commands)
       Use case: Write SQL queries, analyze cohorts, evaluate A/B tests
       Commands: /write-query, /analyze-cohorts, /analyze-test
     
     * pm-go-to-market (6 skills, 3 commands)
       Use case: Plan product launches, design growth strategies, create competitive battlecards
       Commands: /plan-launch, /growth-strategy, /battlecard
     
     * pm-marketing-growth (5 skills, 2 commands)
       Use case: Define positioning, create marketing campaigns, establish North Star metrics
       Commands: /market-product, /north-star
     
     * pm-toolkit (4 skills, 5 commands)
       Use case: Review resumes, draft legal docs, proofread content
       Commands: /review-resume, /tailor-resume, /draft-nda, /privacy-policy, /proofread
     
     * pm-ai-shipping (2 skills, 5 commands)
       Use case: Document AI-generated code, run security/performance audits
       Commands: /ship-check, /document-app, /derive-tests, /security-audit-static, /performance-audit-static
   
   - Let me select which ones I want (I can choose multiple)

4. Run the installation commands based on my choice

5. After installation, tell me:
   - What commands are now available
   - How to initialize my first PM Brain (if installed)
   - Next steps

Installation commands:
- For everything: claude plugin install pm-all@pm-os
- For PM Brain only: claude plugin install pm-brain@pm-os
- For specific plugins: claude plugin install [plugin-name]@pm-os

Start by checking the marketplace status.
```

---

## What Happens Next

Claude will:

### Step 1: Check Marketplace
```bash
# Claude checks if marketplace exists
claude plugin marketplace list

# If not found, adds it
claude plugin marketplace add brainly-io/pm-os
```

### Step 2: Present Options
Claude asks you:
> "Which installation would you like?
> 
> A) Install everything (Recommended)
> B) PM Brain only
> C) Let me choose specific plugins"

### Step 3: Install Based on Your Choice

**If you choose A (Everything):**
```bash
claude plugin install pm-all@pm-os
```

**If you choose B (Brain only):**
```bash
claude plugin install pm-brain@pm-os
```

**If you choose C (Custom):**
Claude shows all plugins and you select which ones, then installs them one by one.

### Step 4: Confirmation

Claude tells you:
- ✅ What got installed
- 📋 Available commands (e.g., `/pm-brain`, `/discover`, `/write-prd`)
- 📖 Next steps to initialize your brain

### Step 5: Next Steps Guidance

Claude guides you:
1. Create a directory for your brain
2. Open it in Claude Desktop
3. Run `/pm-brain` to initialize
4. Start using the commands

---

## Why This Approach?

**Benefits:**
- ✅ No manual terminal commands
- ✅ Claude explains each step
- ✅ Interactive - you choose what to install
- ✅ Immediate help if something goes wrong
- ✅ Educational - you understand what's happening

**Traditional approach vs Interactive:**

| Traditional | Interactive Prompt |
|------------|-------------------|
| Read docs | Paste one prompt |
| Open terminal | Claude does it |
| Run commands manually | Choose options in chat |
| Check installation | Claude confirms |
| Read next steps | Claude guides you |

---

## Add This to Your README

You can add this section to your main README:

```markdown
## 🚀 Quick Install (Interactive)

Paste this into Claude Desktop and let Claude handle the installation:

[Link to full prompt above]

Claude will:
- Add the PM-OS marketplace
- Ask what you want to install
- Run the installation
- Guide you through next steps
```

---

## Troubleshooting

**"Command not found: claude"**
→ Install Claude Code CLI first: [Installation guide](https://docs.anthropic.com/claude/docs/cli-installation)

**"Marketplace already exists"**
→ No problem! Claude will skip that step and proceed to installation options.

**"I want to change what I installed"**
→ You can run the prompt again and choose different options. Installing new plugins doesn't remove existing ones.

**"I don't see the /pm-brain command"**
→ Make sure PM Brain plugin is installed: `claude plugin list`
→ Reinstall if needed: `claude plugin install pm-brain@pm-os`

---

## For Advanced Users

If you prefer full automation without interaction, use:

```bash
# Install everything
curl -fsSL https://raw.githubusercontent.com/brainly-io/pm-os/main/install.sh | bash

# Or manual CLI commands
claude plugin marketplace add brainly-io/pm-os
claude plugin install pm-all@pm-os
```

But the interactive prompt is recommended for first-time users!
