---
name: quote
description: Create a fixed-price quote / estimate for freelance work. Use when the user asks to quote, estimate, or price a job. Includes scope, exclusions, validity, and payment terms so the quote protects both sides.
---

# Quote / Estimate

Create a quote. Never invent scope, price, or timeline — ask for what's missing.

## Required fields

- Client name
- Deliverables (what's included, in plain language)
- Price (fixed total, or per-item) + currency
- Validity (default 14 days)

## Defaults

- Quote number: `QT-YYYY-NNNN`
- Valid for 14 days from the quote date
- Payment: 50% upfront, 50% on delivery, unless told otherwise
- Revisions: 2 rounds included, unless told otherwise

## Steps

1. List what's included, line by line. Then list what's **not** included (extra revisions, hosting, stock photos, content writing) — this is what prevents scope creep.
2. Recompute totals. Show subtotal, tax if given, total.
3. Output Markdown using the template below.

## Template

```markdown
# QUOTE QT-2026-031
**To:** Client Name | **Date:** 2026-11-14 | **Valid until:** 2026-11-28

## Included
- Landing page design + build (1 page)
- 2 revision rounds

## Not included
- Hosting, domain, stock photos, copywriting

## Price
Total: $900.00 — 50% upfront ($450.00), 50% on delivery.
```

## Example

User: "quote $900 for a landing page, 2 revisions, valid 14 days"
→ Produce QT-2026-031 as above. Ask for the client name if missing before finalising.

## Don't

- Don't promise a delivery date unless the user gives one.
- Don't quote hourly and fixed-price in the same quote — pick one.
- Don't hide exclusions. If it's not listed as included, it costs extra.
