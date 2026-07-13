# PM-OS Examples

This directory contains working examples to help you understand and test PM-OS.

## What's Inside

### [example-brain/](example-brain/)

A fully populated PM Brain instance that you can explore and test with immediately.

**What it contains:**
- Pre-populated knowledge base (strategy, users, market, org)
- Sample hypotheses with evidence
- Example decisions with audit trails
- Stakeholder files with touchpoint logs
- Ingested artifacts (interviews, meetings, market signals)
- Source files (original artifacts)

**How to use it:**

```bash
# 1. Navigate to the example brain
cd examples/example-brain

# 2. Start Claude
claude

# 3. Try commands immediately:
/review                    # See maintenance suggestions
/prep [stakeholder-name]   # Prepare for a meeting
/ideate [problem]          # Get evidence-based solutions
/risk [feature]            # Scan feature risks

# 4. Ingest new artifacts
/ingest
[paste your own content]

# 5. Explore the files
ls knowledge/             # See synthesized knowledge
cat hypotheses/*.md       # Check hypothesis evidence
cat decisions/*.md        # Review decision history
```

**Learning from the example:**

- **File structure** — See how a real brain organizes
- **Provenance tags** — How evidence is cited
- **Synthesis quality** — How ingestion produces insights
- **Hypothesis format** — Evidence rows with confidence
- **Decision logs** — "What would reverse this" field

**Starting your own brain:**

Once you understand the example, initialize your own:

```bash
mkdir ~/my-product-brain
cd ~/my-product-brain
claude
/pm-brain
```

Answer the onboarding questions (see [docs/testing/interview-qa-example.md](../docs/testing/interview-qa-example.md) for reference answers).

## Testing PM Skills with the Example Brain

The example brain provides context for PM Skills commands:

```bash
cd examples/example-brain

# Strategy is already loaded from knowledge/strategy.md
/write-prd New feature idea

# User insights are already in knowledge/users/insights.md
/discover Improvement idea

# Hypotheses exist to reference
/risk Existing feature
```

PM Skills commands will use the brain's existing context, showing you how Brain + Skills integrate.

## Related Documentation

- [Quickstart Guide](../docs/quickstart.md) - Get started
- [PM Brain Guide](../docs/pm-brain-guide.md) - Memory layer details
- [Integration Guide](../docs/integration-guide.md) - Using Brain + Skills together
- [Testing Documentation](../docs/testing/) - Validation and test cases
