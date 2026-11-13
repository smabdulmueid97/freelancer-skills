# freelancer-skills

Claude Code skills for solo freelancers — the money work, the posting work, and the video work, not the code work.

**Invoice, quote, track expenses, chase late payments, close the month, post to 7 platforms, and turn long videos into shorts — from a plain-English prompt, with no API key, no backend, no signup.**

Try it in 10 seconds, no Claude needed: open [`demo/index.html`](demo/index.html) — or live at https://smabdulmueid97.github.io/freelancer-skills/ once Pages is on — type a client + amount, print to PDF.

## Why this exists

Checked GitHub Trending on 2026-11-14 (daily + weekly + monthly, ~50 repos). The pattern was impossible to miss:

1. **Agent skills are the #1 trending category.** `anthropics/skills`, `addyosmani/agent-skills`, `mattpocock/skills`, `claude-trading-skills`, `cloudflare/security-audit-skill`, `taste-skill`, `claude-mem` — 12+ of the top 50 are Claude Code skills / plugins.
2. **Dev tools + security review are next.** `alibaba/open-code-review`, `openai/codex-security`, `chrome-devtools-mcp`, `modern-web-guidance-src`.
3. **Money workflows trend too.** `daily_stock_analysis`, `claude-trading-skills`, `sure` (personal finance).
4. **Self-hosted, zero-setup, try-it-in-browser wins.** `uptime-kuma`, `agent-browser`, `lobehub` — people star what they can use immediately.

The gap: every trending skill pack is for developers, traders, or SEO. None covers the daily money workflow of a freelancer — invoicing, quotes, expenses, late-payment follow-ups. That's this repo.

## Skills included

| Skill | Trigger | What it does |
|---|---|---|
| `invoice` | "invoice Acme for $800 for the website" | Builds a professional invoice (numbered, dated, due date, tax/VAT, multi-currency), as Markdown + printable HTML/PDF |
| `quote` | "quote $1,200 for a logo + 2 revisions" | Builds a fixed-price quote / estimate with scope, exclusions, validity (14 days), payment terms |
| `expense-tracker` | "log $45 for Figma, client Acme" | Logs an expense, categorises it, keeps a running monthly total per client / category |
| `payment-followup` | "chase the unpaid invoice #104" | Writes a polite 1st / 2nd / final reminder — firm, not rude — with the exact amount, due date and payment link |
| `monthly-summary` | "close October" | Totals invoiced, paid, outstanding, expenses and profit for the month, per client, with the top 3 overdue invoices |
| `social-media-posting` | "post this to TikTok, Reels and LinkedIn" | Turns one idea into platform-ready posts for YouTube, Instagram, Facebook, TikTok, Bilibili, LinkedIn, and X — own hook, length, and hashtags per platform |
| `long-to-short-video` | "turn this 40-min tutorial into 5 shorts" | Finds the best moments, writes hooks + captions, and cuts vertical 9:16 clips with ffmpeg — one master clip, per-platform cuts for X, LinkedIn, and Bilibili |

Each skill is one `SKILL.md` — read it, copy the folder, done. No dependencies (the video skill's cutter needs only ffmpeg).

## Install (30 seconds)

```bash
git clone https://github.com/smabdulmueid97/freelancer-skills.git
./scripts/install.sh
# copies skills/ → ~/.claude/skills/
```

Or manually: copy any `skills/<name>/` folder into `~/.claude/skills/<name>/`.

Then in Claude Code, just talk normally:

```
invoice Bright Studio for $650 — homepage redesign, 50% upfront, due in 14 days
quote $900 for a landing page, 2 revisions, valid 14 days
log $29 for hosting, client Bright Studio
chase invoice #INV-1042, it's 12 days overdue
close October
post this launch to YouTube, Instagram, TikTok, Bilibili, LinkedIn and X
turn this 40-minute tutorial into 5 shorts for Shorts, Reels and TikTok
```

## No-Claude demo

`demo/index.html` is a single-file invoice generator (the same logic as the `invoice` skill, in the browser):

- Add line items, tax / VAT, discount, multi-currency (USD, EUR, GBP, BDT, INR)
- Auto invoice number + due date, saves to localStorage — nothing leaves your browser
- Print / Save as PDF

Open the file locally, or use the GitHub Pages link above.

## Repo layout

```
skills/
  invoice/SKILL.md
  quote/SKILL.md
  expense-tracker/SKILL.md
  payment-followup/SKILL.md
  monthly-summary/SKILL.md
  social-media-posting/SKILL.md
  social-media-posting/templates/post-brief.md
  long-to-short-video/SKILL.md
  long-to-short-video/templates/clip-plan.md
  long-to-short-video/scripts/make-clips.sh   # ffmpeg cutter, clips.csv in, 9:16 clips out
demo/index.html          # single-file invoice generator, no build step
scripts/install.sh       # copies skills to ~/.claude/skills/
```

## Rules every skill follows

- Never invent a client, amount, date or rate. Ask if it's missing.
- Money is always shown with currency + 2 decimals. Totals are recomputed, never copied from the prompt.
- Dates are ISO (`2026-11-14`), due date defaults to +14 days unless told otherwise.
- Output is Markdown first, HTML/PDF second. No external services.

## Contributing

One skill = one folder, one `SKILL.md`, one worked example. Keep it under 150 lines. PRs welcome.

## License

MIT — use it, sell with it, no attribution required.
