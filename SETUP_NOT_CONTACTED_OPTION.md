# Manual Setup Required: Add "Not Contacted" Option

## Action Needed

You need to manually add the "⚪ Not Contacted" option to the Contact Status field in GitHub Projects.

## Steps:

1. Go to your GitHub Project: https://github.com/users/Flotfyr2000/projects/3
2. Click on the three-dot menu (⋮) in the top right
3. Select "Settings"
4. Find "Contact Status" field in the list
5. Click "Edit" on Contact Status
6. Add a new option:
   - **Name:** `⚪ Not Contacted`
   - **Color:** Gray
7. After creating it, get the option ID by running:
   ```bash
   gh api graphql -f query='
   query {
     node(id: "PVTSSF_lAHODqcU-c4BK4nTzg71Gzg") {
       ... on ProjectV2SingleSelectField {
         options {
           id
           name
         }
       }
     }
   }'
   ```
8. Update `.github/scripts/update_lead_status.sh` line 17:
   - Replace `NOT_CONTACTED_ID="TBD"` with the actual ID
9. Update `HOW_I_WORK.md` to add the new option ID
10. Commit and push the ID update

## Why This is Needed

The automation script now handles leads without Last Interaction dates by setting them to "⚪ Not Contacted" status instead of skipping them. This gives you visibility into which leads haven't been contacted yet.

## Status Hierarchy

After adding this option, your complete status hierarchy will be:
- ⚪ **Not Contacted** - No Last Interaction date set
- 🟢 **Recent** (0-7 days) - All good
- 🟡 **Warm** (8-14 days) - Keep an eye on it
- 🟠 **Cooling** (15-30 days) - Consider reaching out
- 🔴 **Cold** (31-60 days) - Follow-up needed!
- ⚫ **Stale** (60+ days) - Urgent follow-up required!
