---
name: payment-followup
description: Write a polite payment reminder for an overdue invoice. Use when the user asks to chase, follow up, or remind a client about an unpaid invoice. Three escalating tones — friendly, firm, final — never rude, never threatening.
---

# Payment Follow-up

Write the reminder. Never invent an invoice number, amount, or due date — ask if missing.

## Inputs

- Invoice number, amount + currency, due date, days overdue
- Client name + contact name if known
- Which reminder: 1st (friendly), 2nd (firm), final (before pausing work)

## Tone ladder

1. **Friendly (1–7 days overdue):** assume it slipped their mind. "Just checking in…"
2. **Firm (8–21 days):** state the amount, due date, and ask for a payment date.
3. **Final (22+ days):** state that work pauses until payment, give a final date (7 days).

Every email includes: invoice number, amount, due date, and how to pay. No guilt, no threats, no legal language unless the user asks for it.

## Template — friendly

```
Subject: Quick check-in — Invoice INV-2026-1042 ($650.00)

Hi [Name],

Hope you're well. Just checking in on invoice INV-2026-1042
for $650.00, due 28 Nov 2026 — it may have slipped through.

Payment details are on the invoice. Let me know if anything
looks off, or when I can expect it.

Thanks,
[Your Name]
```

## Template — firm

```
Subject: Payment due — Invoice INV-2026-1042 ($650.00, 12 days overdue)

Hi [Name],

Invoice INV-2026-1042 for $650.00 was due 28 Nov 2026 and is
now 12 days overdue. Could you let me know a payment date
this week?

Thanks,
[Your Name]
```

## Don't

- Don't send it yourself — draft it and let the user send.
- Don't add late fees unless the invoice / contract says so.
- Don't CC anyone else unless the user asks.
