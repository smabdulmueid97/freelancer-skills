---
name: invoice
description: Create a professional, numbered invoice from a plain-English prompt. Use when the user asks to invoice, bill, or charge a client for work. Outputs Markdown + printable HTML, with tax/VAT, multi-currency, and a due date.
---

# Invoice

Create an invoice. Never invent a client, amount, rate, or date — ask for any missing required field before generating.

## Required fields

- Client name
- Your name / business name
- Line items: description, quantity, unit price
- Currency (default USD; support EUR, GBP, BDT, INR)
- Invoice date (default today)

## Defaults

- Invoice number: `INV-YYYY-NNNN` (increment from the last invoice in the project, or start at 1001)
- Due date: invoice date + 14 days, unless the user says otherwise
- Tax / VAT: 0% unless the user gives a rate. Show it as a separate line, never baked into prices.
- Payment terms: "Payment due within 14 days. Bank transfer or bKash / PayPal — details on the invoice."

## Steps

1. Parse line items. Recompute every total: `line total = qty × unit price`, `subtotal = sum(lines)`, `tax = subtotal × rate`, `total = subtotal + tax − discount`. Show the maths.
2. Ask for anything missing (one short question, not a form).
3. Output Markdown first, using the template below, then offer HTML/PDF.

## Template

```markdown
# INVOICE INV-2026-1042
**From:** Your Name — your@email.com
**To:** Client Name
**Date:** 2026-11-14 | **Due:** 2026-11-28

| Description | Qty | Unit | Amount |
|---|---|---|---|
| Homepage redesign | 1 | $650.00 | $650.00 |

Subtotal: $650.00
Tax (0%): $0.00
**Total due: $650.00**
```

## Example

User: "invoice Bright Studio for $650 — homepage redesign, 50% upfront, due in 14 days"

- Ask: your business name / payment details if not known.
- Produce INV-2026-1042 as above, plus a note: "50% upfront ($325.00) due on receipt, balance on delivery."
- Save it as `invoices/INV-2026-1042.md` if the project has an invoices folder.

## Don't

- Don't round totals silently — show 2 decimals everywhere.
- Don't add late fees unless the user asks.
- Don't email it unless the user explicitly says to send it.
