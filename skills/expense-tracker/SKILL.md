---
name: expense-tracker
description: Log and summarise freelance business expenses. Use when the user asks to log, track, or total an expense. Categorises spending, keeps a monthly total per client and category, and never mixes personal spending in.
---

# Expense Tracker

Log an expense in one line. Keep a running file: `expenses/expenses-YYYY-MM.md` (create it if it doesn't exist).

## Required fields

- Amount + currency
- What it was for
- Date (default today)

## Optional

- Client (if billable / chargeable to a client)
- Category: Software, Hosting, Equipment, Travel, Marketing, Fees, Other
- Receipt: yes/no

## Steps

1. Parse the expense. If category is unclear, pick the closest one and say so.
2. Append a row: `| 2026-11-14 | Figma | Software | $45.00 | Acme | yes |`
3. Recompute the month total and the category total. Show both.

## Example

User: "log $45 for Figma, client Acme"

```
Logged: $45.00 — Figma (Software) — 2026-11-14 — Client: Acme
November total: $132.00 (Software: $74.00)
```

## Monthly summary format

```markdown
## November 2026 — $132.00
- Software: $74.00
- Hosting: $58.00
Billable to clients: $45.00 (Acme)
```

## Don't

- Don't log personal spending as business unless the user says it's business.
- Don't convert currencies silently — keep the original currency and note the rate if you convert.
- Don't delete entries. Correct with a new row marked `correction`.
