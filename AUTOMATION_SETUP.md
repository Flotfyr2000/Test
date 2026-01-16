# Quick Setup: Lead Contact Tracking Automation

## Why the Automation Failed

The workflow failed with error: **"Resource not accessible by integration"**

This happens because the default `GITHUB_TOKEN` doesn't have permission to access GitHub Projects API. You need to provide a Personal Access Token (PAT) instead.

---

## Fix: Add Personal Access Token (5 minutes)

### 1. Create Token
👉 Go to: https://github.com/settings/tokens

1. Click **Generate new token (classic)**
2. Name: `Lead Tracking Automation`
3. Check these boxes:
   - ✅ `repo`
   - ✅ `project`
4. Click **Generate token**
5. **Copy the token** (starts with `ghp_...`)

### 2. Add to Repository
👉 Go to: https://github.com/Flotfyr2000/Test/settings/secrets/actions

1. Click **New repository secret**
2. Name: `GH_PAT`
3. Paste your token
4. Click **Add secret**

### 3. Test It
👉 Go to: https://github.com/Flotfyr2000/Test/actions/workflows/update-lead-status.yml

1. Click **Run workflow**
2. Click **Run workflow** again
3. Wait ~10 seconds
4. Check it says ✅ instead of ❌

---

## What This Automation Does

Every day at 5 AM, it automatically:
- Scans all your leads in the GitHub Project
- Calculates how many days since last contact
- Updates the status with color-coded indicators:
  - ⚪ Not Contacted
  - 🟢 Recent (0-7 days)
  - 🟡 Warm (8-14 days)
  - 🟠 Cooling (15-30 days)
  - 🔴 Cold (31-60 days)
  - ⚫ Stale (60+ days)
- Adds follow-up comments to cold/stale leads

---

## After Setup

**To track a lead:**
1. Set the "Last Interaction" date when you contact them
2. The automation updates the status automatically

**To see leads needing follow-up:**
- Filter by Contact Status = 🔴 Cold or ⚫ Stale

---

## Need Help?

- See full documentation: `.github/workflows/README.md`
- Check workflow logs: https://github.com/Flotfyr2000/Test/actions
