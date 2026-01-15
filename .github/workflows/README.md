# Lead Contact Status Automation

## Overview
Automatically tracks and updates lead contact status to ensure timely follow-ups.

## How It Works

### Automatic Daily Updates (5:00 AM UTC)
Every day at 5:00 AM, the GitHub Actions workflow:
1. Scans all leads in the project
2. Calculates days since last interaction
3. Updates "Days Since Contact" field
4. Updates "Contact Status" with color-coded indicator:
   - ⚪ **Not Contacted** - No Last Interaction date set yet
   - 🟢 **Recent** (0-7 days) - All good
   - 🟡 **Warm** (8-14 days) - Keep an eye on it
   - 🟠 **Cooling** (15-30 days) - Consider reaching out
   - 🔴 **Cold** (31-60 days) - Follow-up needed!
   - ⚫ **Stale** (60+ days) - Urgent follow-up required!
5. Adds comment to cold/stale leads reminding you to follow up

### Manual Workflow Trigger
You can also run the workflow manually:
1. Go to **Actions** tab in GitHub
2. Click **Update Lead Contact Status**
3. Click **Run workflow**
4. Check the logs to see which leads need attention

### Setting Last Interaction Date
When you contact a lead:
1. Open the lead issue in GitHub Projects
2. Update the **Last Interaction** field to today's date
3. The next day (or next manual run), status will be automatically updated

## Fields Created

| Field | Type | Purpose |
|-------|------|---------|
| **Last Interaction** | Date | Manually set when you contact the lead |
| **Days Since Contact** | Number | Auto-calculated daily |
| **Contact Status** | Single-select | Auto-updated visual indicator |

## Visual Status Indicators

Sort or filter your leads by Contact Status to prioritize follow-ups:

```
⚪ Not Contacted        - Needs initial contact
🟢 Recent (0-7 days)    - No action needed
🟡 Warm (8-14 days)     - Monitor
🟠 Cooling (15-30 days) - Consider outreach
🔴 Cold (31-60 days)    - Follow up needed
⚫ Stale (60+ days)     - Urgent attention required
```

## GitHub Projects Views

**Recommended Views:**

1. **Follow-up Needed** - Filter by Contact Status = 🔴 Cold or ⚫ Stale
2. **All Leads by Status** - Group by Contact Status
3. **Recent Activity** - Sort by Last Interaction (descending)

## Notifications

The workflow will add comments to cold/stale leads:
- Appears as a GitHub issue comment
- Only added once (won't spam)
- Reminds assigned team member to follow up

## Troubleshooting

**Workflow not running?**
- Check that GitHub Actions is enabled for the repository
- Verify workflow file is in `.github/workflows/`
- Check Actions tab for error logs

**Manual run:**
```bash
# From command line
bash .github/scripts/update_lead_status.sh
```

## Customization

Edit `.github/scripts/update_lead_status.sh` to adjust:
- Status thresholds (currently 7/14/30/60 days)
- Comment behavior
- Additional actions for cold leads

Edit `.github/workflows/update-lead-status.yml` to adjust:
- Schedule time (currently 5:00 AM UTC)
- Add notifications (Slack, email, etc.)
