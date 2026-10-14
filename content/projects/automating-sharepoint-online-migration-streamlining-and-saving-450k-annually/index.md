# Automating SharePoint Online Migration: Streamlining and Saving $450K Annually

**Python · SharePoint Online and Microsoft Graph APIs · Azure Active Directory** · [View the code](https://github.com/smcgb/spo_migration)

## The problem

Freedom Forever stores the AutoCAD build plans for every solar project in SharePoint Online. That data was growing by about **1.5 TB a month**, and keeping total storage under the **30 TB** ceiling meant paying for extra SharePoint capacity plus third-party SaaS tools like ShareGate.

Getting the data out wasn't simple:

- SharePoint Online is a web-page-based schema, not a true file share
- Orchestration connectors don't keep the folder hierarchy for binary files
- API limits apply per site
- Manual moves are capped at 100 binary objects at a time
- Any approach had to avoid downtime and data loss

## The approach

I wrote a Python script that talks directly to the SharePoint Online and Microsoft Graph APIs.

1. **Extraction and validation:** check each item's structure and integrity before transfer, so less needs fixing by hand afterward
2. **Batch transfer:** move large volumes in batches over a connection secured with Azure Active Directory, rotating API keys to avoid token expiry
3. **Error handling:** detect, log, and retry failures automatically, with detailed reports for auditing
4. **Permissions:** carry user access and permissions across so nobody lost access or picked up access they shouldn't have
5. **Testing:** validate data integrity, transfer speed, and compliance in a controlled environment, then tune iteratively

Each instance moved about 25 GB/hour, and forward and reverse copies ran in parallel. For 20+ TB, that was far more reliable than OneDrive sync or direct downloads, which regularly corrupted large files and batches.

## The results

> An estimated **$450,000 in cost savings** over a year, with storage held under the 30 TB ceiling and no paid migration tooling.

[Back to projects](/projects)
