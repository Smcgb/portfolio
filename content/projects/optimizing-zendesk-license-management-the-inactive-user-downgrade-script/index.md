# Optimizing Zendesk License Management: The Inactive User Downgrade Script

**Python · Zendesk API · Azure Functions** · [View the code](https://github.com/smcgb/Zendesk-Downgrade-Inactive)

## The problem

I manage several Zendesk tenants with more than 400 users between them, and that user base changes constantly. Tracking who was still active by hand was slow and error-prone. Unused licenses went unnoticed at renewal, and accounts stayed active long after anyone needed them.

## The approach

I wrote a Python script that uses the Zendesk API to find agents who have **never logged in** or have been **inactive for more than 45 days**, and downgrades them automatically. It runs on a schedule, so the cleanup happens without anyone having to remember it.

## The results

- **Lower costs:** fewer seats at license renewal
- **Better security:** inactive accounts, especially missed off-boardings, don't linger with agent access
- **Time back:** significant time saved each month on manual audits

The code is MIT-licensed and designed to be easy to modify.

[Back to projects](/projects)
