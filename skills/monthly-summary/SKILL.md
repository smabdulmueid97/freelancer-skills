---
name: monthly-summary
description: Close the month for a freelancer — invoiced, paid, outstanding, expenses, profit. Use when the user asks to close, summarise, or review a month. Shows per-client totals and the top overdue invoices.
---

# Monthly Summary

Close the month. Use the project's invoices and expenses files if they exist; ask for the numbers if they don't.

## Output

```markdown
## October 2026 — Summary

Invoiced: $2,400.00 (4 invoices)
Paid: $1,750.00
Outstanding: $650.00
Expenses: $132.00
Profit (paid − expenses): $1,618.00

### Per client
- Bright Studio: invoiced $650.00, paid $650.00
- Acme: invoiced $1,750.00, paid $1,100.00, outstanding $650.00

### Overdue (top 3)
1. INV-2026-1042 — Acme — $650.00 — 12 days overdue
```

## Steps

1. Total invoiced, paid, outstanding, expenses. Recompute — don't trust a total in the prompt.
2. Break down per client.
3. List overdue invoices, oldest first, max 3 in the summary (full list in a table if asked).
4. End with one line: the single most useful next action, e.g. "Chase INV-2026-1042 — it's 52% of what's outstanding."

## Don't

- Don't count an unpaid invoice as income. Paid only.
- Don't invent numbers for a month with no data — say so and ask.
- Don't give tax advice. If asked, say "check with an accountant in your country" and give the totals they'd need.
