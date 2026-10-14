# Automating Zendesk Custom Field Updates with an External Excel Sheet

**Python · pandas · Zendesk API · Azure Functions · SharePoint · Excel** · [View the code](https://github.com/smcgb/zd_field_update)

## The problem

Zendesk custom fields have to stay current to be useful, and HR-driven fields like position titles and job classifications change all the time. Each change meant HR asking another team to update Zendesk by hand. The result was delays, miscommunication, and dropdowns that no longer matched reality.

## The approach

I moved the source of truth to a place HR already worked: an Excel sheet in SharePoint. A Python script, run on Azure Functions, reads the sheet with pandas and updates the matching Zendesk custom field options automatically.

Non-technical users own the data. The script keeps Zendesk in sync.

## The results

- Field options stay up to date without a ticket to IT
- Fewer data-entry errors and less back-and-forth between departments
- Consistent data across HR and support systems
- Hours of manual admin work removed

The code is MIT-licensed and easy to adapt to other fields.

[Back to projects](/projects)
