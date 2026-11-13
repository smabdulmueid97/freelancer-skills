#!/bin/sh
# Install freelancer-skills into Claude Code: copies skills/ to ~/.claude/skills/
set -e
DEST="$HOME/.claude/skills"
mkdir -p "$DEST"
cp -r "$(dirname "$0")/../skills/"* "$DEST/"
echo "Installed 7 skills to $DEST:"
ls "$DEST" | grep -E '^(invoice|quote|expense-tracker|payment-followup|monthly-summary|social-media-posting|long-to-short-video)$'
echo "Try in Claude Code: invoice Bright Studio for \$650 — homepage redesign"
