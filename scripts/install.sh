#!/bin/sh
# Install freelancer-skills into Claude Code: copies skills/ to ~/.claude/skills/
set -e
DEST="$HOME/.claude/skills"
mkdir -p "$DEST"
cp -r "$(dirname "$0")/../skills/"* "$DEST/"
echo "Installed 5 skills to $DEST:"
ls "$DEST" | grep -E '^(invoice|quote|expense-tracker|payment-followup|monthly-summary)$'
echo "Try in Claude Code: invoice Bright Studio for \$650 — homepage redesign"
