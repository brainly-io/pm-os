# PM-OS Interactive Installation

Copy and paste this entire prompt into Claude Desktop to install PM-OS interactively:

---

## Installation Prompt (Copy Everything Below)

```
I want to install PM-OS (PM Brain + PM Skills). Please help me with an interactive installation.

IMPORTANT: PM Skills require PM Brain to be installed and set up. Without PM Brain, PM Skills are useless as they need the brain's context to work effectively.

**Your task:**
1. Check if I have the brainly-io/pm-os marketplace added
2. If not, run: `claude plugin marketplace add brainly-io/pm-os`
3. Ask me which installation option I prefer:
   - Option A: Install everything (PM Brain + all 9 PM Skills plugins) - Recommended
   - Option B: Install only PM Brain
   - Option C: Install PM Brain + specific plugins I choose
4. For Option C:
   - If PM Brain isn't installed, STRONGLY RECOMMEND installing it first (explain why)
   - Show all 9 PM Skills plugins with use cases and commands
   - Let me select which ones I want
5. Based on my choice, run the appropriate installation commands
6. After installation, explain what I got and what commands are available
7. Guide me on next steps (how to initialize my first brain if PM Brain is installed)

**Installation commands you'll use:**
- For everything: `claude plugin install pm-all@pm-os`
- For PM Brain only: `claude plugin install pm-brain@pm-os`
- For specific plugins: `claude plugin install [plugin-name]@pm-os`

**Available PM Skills plugins (9 total - only show these for Option C):**

1. pm-product-discovery (13 skills, 5 commands)
   - Use case: Run discovery cycles, design experiments, conduct user interviews, validate assumptions
   - Commands: /discover, /brainstorm, /triage-requests, /interview, /setup-metrics

2. pm-product-strategy (12 skills, 5 commands)
   - Use case: Build product strategy, define vision, analyze competition, create business models
   - Commands: /strategy, /business-model, /value-proposition, /market-scan, /pricing

3. pm-execution (16 skills, 11 commands)
   - Use case: Write PRDs, plan OKRs, manage roadmaps, run sprints, conduct pre-mortems
   - Commands: /write-prd, /plan-okrs, /transform-roadmap, /sprint, /pre-mortem, /red-team-prd, /meeting-notes, /stakeholder-map, /write-stories, /test-scenarios, /generate-data

4. pm-market-research (7 skills, 3 commands)
   - Use case: Create personas, segment users, map journeys, analyze competitors
   - Commands: /research-users, /competitive-analysis, /analyze-feedback

5. pm-data-analytics (3 skills, 3 commands)
   - Use case: Write SQL queries, analyze cohorts, evaluate A/B tests
   - Commands: /write-query, /analyze-cohorts, /analyze-test

6. pm-go-to-market (6 skills, 3 commands)
   - Use case: Plan product launches, design growth strategies, create competitive battlecards
   - Commands: /plan-launch, /growth-strategy, /battlecard

7. pm-marketing-growth (5 skills, 2 commands)
   - Use case: Define positioning, create marketing campaigns, establish North Star metrics
   - Commands: /market-product, /north-star

8. pm-toolkit (4 skills, 5 commands)
   - Use case: Review resumes, draft legal docs, proofread content
   - Commands: /review-resume, /tailor-resume, /draft-nda, /privacy-policy, /proofread

9. pm-ai-shipping (2 skills, 5 commands)
   - Use case: Document AI-generated code, run security/performance audits
   - Commands: /ship-check, /document-app, /derive-tests, /security-audit-static, /performance-audit-static

Start by checking the marketplace and asking me which option I want.
```

---

## What This Does

When you paste this prompt into Claude Desktop, Claude will:

1. **Check marketplace status**
   - Runs `claude plugin marketplace list` to see if brainly-io/pm-os is added
   - If not, adds it automatically

2. **Present options interactively**
   - Asks which installation option you prefer
   - Explains what each option includes

3. **Run installation commands**
   - Based on your choice, executes the appropriate `claude plugin install` commands
   - Shows progress and confirms installation

4. **Explain what you got**
   - Lists all installed commands
   - Shows what's available to use

5. **Guide next steps**
   - How to initialize your first brain
   - Where to create the brain directory
   - What to do after initialization

## Alternative: One-Command Install Script

If you prefer a fully automated approach, add this to your README:

### Quick Install (Automated)

```bash
curl -fsSL https://raw.githubusercontent.com/brainly-io/pm-os/main/install.sh | bash
```

This script will:
- Add the marketplace
- Prompt you for installation options
- Install your selected plugins
- Show next steps

## Which Approach?

**Interactive prompt (above):**
- ✅ User has control at each step
- ✅ Claude explains everything
- ✅ Educational
- ❌ Requires copy-paste

**Automated script:**
- ✅ One command
- ✅ Faster
- ❌ Less visibility into what's happening
- ❌ Requires curl/bash access

Choose based on your audience and preference!
