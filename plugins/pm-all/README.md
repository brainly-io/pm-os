# PM-All Meta-Plugin

This is a meta-plugin that installs **PM Brain + all 9 PM Skills plugins** in one command.

## What Gets Installed

- **PM Brain** - Memory initialization skill
- **PM Product Discovery** (13 skills, 5 commands)
- **PM Product Strategy** (12 skills, 5 commands)
- **PM Execution** (16 skills, 11 commands)
- **PM Market Research** (7 skills, 3 commands)
- **PM Data Analytics** (3 skills, 3 commands)
- **PM Go-to-Market** (6 skills, 3 commands)
- **PM Marketing Growth** (5 skills, 2 commands)
- **PM Toolkit** (4 skills, 5 commands)
- **PM AI Shipping** (2 skills, 5 commands)

**Total: 68 skills, 42 commands**

## Installation

```bash
claude plugin marketplace add brainly-io/pm-os
claude plugin install pm-all@pm-os
```

That's it! Everything installs automatically.

## Individual Installation

If you prefer to install plugins selectively:

```bash
claude skill install pm-brain@pm-os
claude plugin install pm-execution@pm-os
claude plugin install pm-product-discovery@pm-os
# ... etc
```
