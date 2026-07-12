#!/bin/bash

set -e

MARKETPLACE="brainly-io/pm-os"
REPO_URL="https://github.com/brainly-io/pm-os"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  PM-OS Installation"
echo "  Brain (memory) + Skills (workflows)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Check if Claude CLI is installed
if ! command -v claude &> /dev/null; then
    echo "❌ Claude Code CLI not found"
    echo "   Please install: https://docs.claude.com/cli"
    exit 1
fi

echo "✅ Claude Code CLI detected"
echo ""

# Add marketplace
echo "📦 Adding PM-OS marketplace..."
claude plugin marketplace add $MARKETPLACE

echo ""
echo "🎯 Installing PM-OS (all plugins)..."
claude plugin install pm-all@$MARKETPLACE

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ Installation complete!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Quick start:"
echo "  1. mkdir ~/my-product-brain && cd ~/my-product-brain"
echo "  2. claude"
echo "  3. /pm-brain"
echo ""
echo "Available commands:"
echo "  /ingest, /prep, /review        (PM Brain)"
echo "  /discover, /write-prd, /strategy  (PM Skills)"
echo ""
echo "Full docs: $REPO_URL"
echo ""
