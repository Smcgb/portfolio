# Ensuring Business Continuity: Zendesk Auto-Recovery Script for Suspended Tickets

**Python · Zendesk API · Azure** · [View the code](https://github.com/smcgb/Zendesk_autorecover)

## The problem

In solar, nothing gets installed until the permits and utility interconnection approvals come through. Our team relied on Zendesk to turn incoming emails into support cases for those requests.

Zendesk limits each sending domain to **400 emails per hour**. Anything past that gets suspended, and suspended emails don't become tickets. On busy days, critical permit and interconnection requests sat in the suspended queue. That delayed installations and, with them, revenue recognition.

## The approach

I wrote a Python script that continuously monitors a designated inbox, identifies tickets suspended by the rate limit, and recovers them into active Zendesk cases. That works around the hourly bottleneck and removes the need for someone to check the queue and recover tickets by hand.

## The results

> An estimated **$50,000 per month** in savings, with no more missed or delayed cases from the hourly limit and no manual recovery work.

The code is MIT-licensed, so you're welcome to adapt it for your own Zendesk instance.

[Back to projects](/projects)
