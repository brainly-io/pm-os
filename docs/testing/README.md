# Testing Documentation

This directory contains testing materials and validation approaches for PM-OS.

## Contents

### [setup-testing.md](setup-testing.md)
Comprehensive testing documentation including:
- Test scenarios executed
- Prompts used for validation
- Expected vs actual results
- Edge cases tested
- Performance observations

### [interview-qa-example.md](interview-qa-example.md)
Mock answers to PM Brain onboarding interview questions. Use this as:
- Reference for what kind of answers work well
- Template for your own onboarding
- Validation that interview flow works correctly

## Testing the Installation

### Quick Validation

After installing PM-OS, you can verify it works using our [example brain](../../examples/example-brain/):

```bash
cd examples/example-brain
claude

# Try these commands:
/ingest source/interviews/example-interview.md
/prep example-stakeholder
/review
```

### Manual Testing

To test PM-OS thoroughly:

1. **Install PM-OS**
   ```bash
   claude plugin install pm-all@pm-os
   ```

2. **Initialize a test brain**
   ```bash
   mkdir test-brain && cd test-brain
   claude
   /pm-brain
   ```

3. **Use mock answers** from [interview-qa-example.md](interview-qa-example.md)

4. **Validate commands**
   - `/ingest` with sample artifacts
   - `/prep` for stakeholders
   - `/review` for maintenance
   - PM Skills commands: `/discover`, `/write-prd`, `/strategy`

5. **Check file structure**
   ```bash
   ls -la .claude/
   ls knowledge/ hypotheses/ decisions/ stakeholders/
   ```

## Contributing Tests

If you find issues or want to add test cases:

1. Document the test scenario
2. Include prompts used
3. Show expected vs actual behavior
4. Open an issue or PR with findings

See [CONTRIBUTING.md](../../CONTRIBUTING.md) for details.

## Related Documentation

- [Quickstart Guide](../quickstart.md) - Get started quickly
- [Example Brain](../../examples/example-brain/) - Pre-populated working example
- [Integration Guide](../integration-guide.md) - Advanced usage patterns
