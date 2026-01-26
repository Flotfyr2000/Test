# How I Work - Claude Code Session Guide

**Last Updated:** 2026-01-20

---

## Platform Structure

**Tenant → Team → Chatbot Hierarchy:**
- **Tenant:** Everyone in the same company (e.g., "Acme Pharma")
- **Team:** Department/group (e.g., "Quality Team", "Production Team")
  - **Admin role:** Can create and edit all chatbots in this team
  - **Consumer role:** Can use all chatbots in this team
- **Personal Team:** Each user's private workspace (only that user is member)
- **Chatbot:** Belongs to ONE team

**User Access:**
- Users can belong to multiple teams
- Always have a personal team (private workspace)
- Can move chatbot from personal → production team (soft launch workflow)

**Default Access Control:**
- Team members can access all team chatbots
- Non-members cannot see team chatbots (unless published to library or link-shared)

---

## Work Organization

**Work Streams** are ongoing categories; **Features** are finite deliverables.

**Work Stream Emojis (ALWAYS use in feature titles):**
- 🔍 Explainability & Quality
- 🌐 Shareability (also 🏷️ 🤝)
- 🔒 Security & Compliance
- 🎯 Governance & Analytics (also 👥)
- 🛠️ Tools & Capabilities (also ⚙️ 🔧 🧪 🔌 🎨 🔄)
- 📚 Training

**Priority Handling:**
- Priority managed via GitHub Projects custom field (P0-P3)
- Do NOT include priority in feature descriptions
- Custom field is single source of truth

---

## Communication Preferences

**Working Style:**
- ALWAYS do things automatically if technically possible
- Never ask "would you like me to..." - just do it
- Default to action, not questions
- Be maximally proactive and autonomous

**Information Delivery:**
- Present information directly in chat
- Don't just create files and tell me to open them
- Still create files for reference, but show content here first

**Feature Refinement:**
- Discuss and iterate in chat FIRST before updating GitHub
- Only update GitHub after content is finalized
- Exception: Non-feature work defaults to immediate execution

**Feature Titles (for Jens):**
- Use clear, descriptive titles (not fancy/marketing language)
- Use non-expert words that Jens (dev/tech lead) understands immediately
- Bad: "🎨 Productivity Suite Orchestration"
- Good: "🎨 HTML Apps for Custom Interfaces"
- Focus on WHAT it is, not marketing fluff
- Keep it simple and obvious

**Feature Format (for Jens):**
All features should follow this structure:

1. **What I Want (PO Wish List)** - Plain language explanation
2. **What It Should Do (MSP Capabilities)** - Checkable list items
   - Use `- [ ]` checkbox format for all items
   - Group by functionality sections
   - Example: `- [ ] Button: "Select Agent" opens modal`
3. **What's NOT in MSP** - Clear exclusions (future enhancements)
4. **Success Looks Like** - Measurable outcomes
5. **User Stories** - For reference
6. **Development Checklist (For Jens)** - Checkable task list
   - Organized by implementation area (UI, API, Logic, etc.)
   - Each item is concrete and checkable
   - Example: `- [ ] Create modal component`
7. **Technical Notes** - Detailed implementation info

---

## Session Recovery

When starting new session:
1. Check git log for recent commits
2. Review backlog files for current state
3. Read this HOW_I_WORK.md for methodology

---

## GitHub Workflows

### Creating Issues - CRITICAL Custom Fields

**MANDATORY: ALWAYS set these fields for EVERY new issue:**

1. **Type** (Feature/Lead/Bug)
2. **Work Stream** (both label AND custom field)
3. **Priority** (P0/P1/P2/P3 via custom field only)
4. **AI Generated** (default: "Yes")
5. **Work Stream Emoji** in title (based on work stream)

**Process:**
1. Create issue via `gh issue create` with work stream emoji in title
2. Add work stream label: `--label "stream: <work-stream-name>"`
3. Get project item ID via GraphQL
4. Set all four custom fields via GraphQL mutations

**CRITICAL: Do NOT skip custom fields - every issue MUST have them set**

**Technical IDs:**
- Project ID: `PVT_kwHODqcU-c4BK4nT`
- Type Field ID: `PVTSSF_lAHODqcU-c4BK4nTzg7x_qM`
  - "Feature" option: `35f63a0a`
  - "Lead" option: `28e866a9`
  - "Bug" option: `694a9c34`
- Work Stream Field ID: `PVTSSF_lAHODqcU-c4BK4nTzg6qWtU`
  - "Explainability & Quality" option: `46814f4b`
  - "Shareability" option: `5a710e08`
  - "Security & Compliance" option: `5106af82`
  - "Governance & Analytics" option: `14babdce`
  - "Tools & Capabilities" option: `021a7ff2`
  - "Training" option: `496ed69c`
- Priority Field ID: `PVTSSF_lAHODqcU-c4BK4nTzg7WfgA`
  - "P0 (MSP)" option: `09a08e69`
  - "MSP Not discussed" option: `a5413f21`
  - "P1" option: `5415ad99`
  - "P1 Not Discussed" option: `9d161555`
  - "P2" option: `a89c3eb4`
  - "P3" option: `42f6c7da`
- AI Generated Field ID: `PVTSSF_lAHODqcU-c4BK4nTzg7ZcR4`
  - "Yes" option: `d88cd6fa`
  - "Human Assessed" option: `674b8489`

**Lead-Specific Fields:**
- Pipeline Stage Field ID: `PVTSSF_lAHODqcU-c4BK4nTzg7yFU4`
  - "Early Stage": `d98a6233`
  - "Evaluation": `89ae9dd9`
  - "Proposal Stage": `a001e2f8`
  - "Compliance & Legal": `cc7edae9`
  - "Closing": `22bb4eda`
- Lead Stage Field ID: `PVTSSF_lAHODqcU-c4BK4nTzg7yFYs`
  - "Prospecting": `207766dd`
  - "Qualification": `db57fc96`
  - "Discovery": `219127a5`
  - "Demo/POC": `21998c80`
  - "Proposal": `ec1ac579`
  - "Negotiation": `fb3b5f53`
  - "Legal & Compliance Review": `fe9136cd`
  - "Closing": `5abbbc12`
  - "Closed-Won": `e22c0b79`
  - "Closed-Lost": `aeaa7827`
  - "On Hold": `7c39d519`
- Team Contact Field ID: `PVTSSF_lAHODqcU-c4BK4nTzg70_b8`
  - "Phillip": `e342114b`
  - "Jens": `51e94dae`
  - "Michael": `9ccc0bba`
- Last Interaction Field ID: `PVTF_lAHODqcU-c4BK4nTzg71GDE` (date)
- Days Since Contact Field ID: `PVTF_lAHODqcU-c4BK4nTzg71Gw4` (number, auto-calculated)
- Contact Status Field ID: `PVTSSF_lAHODqcU-c4BK4nTzg71Gzg`
  - "🟢 Recent (0-7 days)": `b9d7f8d1`
  - "🟡 Warm (8-14 days)": `c750b183`
  - "🟠 Cooling (15-30 days)": `e362fb41`
  - "🔴 Cold (31-60 days)": `2854a3ba`
  - "⚫ Stale (60+ days)": `32d0d3a4`
- Lead Value Field ID: `PVTF_lAHODqcU-c4BK4nTzg7yFao` (number)
- Expected Close Date Field ID: `PVTF_lAHODqcU-c4BK4nTzg7yFbU` (date)
- Contact Name Field ID: `PVTF_lAHODqcU-c4BK4nTzg7yFco` (text)
- Company Field ID: `PVTF_lAHODqcU-c4BK4nTzg7yFes` (text)

**Bug-Specific Fields:**
- Severity Field ID: `PVTSSF_lAHODqcU-c4BK4nTzg8FARQ`
  - "Critical": `a8dc8552` (System down, data loss, security)
  - "High": `09761a21` (Major feature broken, blocks work)
  - "Medium": `b530362e` (Partial functionality, workaround exists)
  - "Low": `61bfd82e` (Minor issue, cosmetic)
- Bug Status Field ID: `PVTSSF_lAHODqcU-c4BK4nTzg8FAS4`
  - "New": `029ef437` (Just reported)
  - "Confirmed": `5e21ffc0` (Bug confirmed and prioritized)
  - "In Progress": `fc1a5242` (Being worked on)
  - "Fixed": `09c78f87` (Fix implemented, needs verification)
  - "Verified": `d4c5f78e` (Fix verified, ready to close)
  - "Closed": `7fbd56b5` (Resolved and closed)

**Type Field:**
- Feature: Product features and capabilities
- Lead: Sales leads and business opportunities
- Bug: Defects and issues

**AI Generated Field:**
- Default for new issues: "Yes" (AI created/refined)
- User changes to "Human Assessed" when reviewed
- AI should NEVER change back to "Yes" unless explicitly instructed

**Example: Creating a Feature Issue**
```bash
# 1. Create issue with emoji and work stream label
gh issue create --repo Flotfyr2000/MugAIn \
  --title "🛠️ New Cool Feature" \
  --body "..." \
  --label "stream: tools-capabilities"

# 2. Get project item ID
gh api graphql -f query='...' # Returns item ID

# 3. Set Type = Feature
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(...) }'

# 4. Set Work Stream = Tools & Capabilities
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(
  fieldId: "PVTSSF_lAHODqcU-c4BK4nTzg6qWtU"
  value: {singleSelectOptionId: "021a7ff2"}
) }'

# 5. Set Priority = P1
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(
  fieldId: "PVTSSF_lAHODqcU-c4BK4nTzg7WfgA"
  value: {singleSelectOptionId: "5415ad99"}
) }'

# 6. Set AI Generated = Yes
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(
  fieldId: "PVTSSF_lAHODqcU-c4BK4nTzg7ZcR4"
  value: {singleSelectOptionId: "d88cd6fa"}
) }'
```

### Sub-Issues

- Must inherit parent's work stream (both label AND custom field)
- Process: Create sub-issue → Add work stream label → Set custom field
- All sub-issues MUST have "sub-issue" label

### Closing Issues with State Reasons

**CLI Limitation:** `gh issue close --reason` only works on open issues

**Solutions:**
- **CLI Workaround:** Reopen first, then close with reason
- **GraphQL (Best for automation):**
  ```graphql
  mutation {
    closeIssue(input: {
      issueId: "issue_id_here"
      stateReason: NOT_PLANNED
    }) {
      issue { state stateReason }
    }
  }
  ```
- **Web UI:** Can change state reason directly

### Managing Duplicate Issues

**When closing duplicates, ALWAYS:**
1. Add the "duplicate" label to the closed issue
2. Close with explanation comment referencing the superseding issue
3. Add a comment to the active issue linking back to the duplicate

**Process:**
```bash
# Close duplicate with explanation
gh issue close 25 --repo Owner/Repo --comment "Closing as duplicate of #77..."

# Add duplicate label
gh issue edit 25 --repo Owner/Repo --add-label "duplicate"

# Link from active issue back to duplicate
gh issue comment 77 --repo Owner/Repo --body "This issue supersedes and closes #25..."
```

**Why this matters:**
- Creates clear audit trail showing issue relationships
- GitHub UI shows "duplicate" badge on closed issue
- Both issues link to each other for easy navigation
- Future searches find both issues and understand the relationship

---

## Strategic Priorities

**MSP Focus (Minimum Sellable Product):**
- Currently building toward first sale, not just MVP
- When discussing "next step" = what's needed to hit MSP
- MSP features must be production-ready and customer-facing quality

**Democratization & Scalability:**
- Challenge: Training/implementation resources shouldn't bottleneck growth
- Solution: Enable end users (process experts) to build their own chatbots
- Impact: Features enabling self-service creation are strategically critical
- Shareability work stream is key to scaling without proportional team growth

---

## Latest Session Summary

### Session 2026-01-09

**Created:**
- #74: Chatbot Performance Testing (domain expert test sets, quantitative scoring)
- #75: Collaborative Chat Sessions (multi-user real-time collaboration)
- #76: Agentic Workflow Orchestration (10 trigger types, 10 output actions)

**Key Learning:**
- Session size affects performance (~118k tokens caused slowdowns)
- Documentation duplication wastes tokens
- GitHub issues are single source of truth for features

**Actions Taken:**
- Closed sub-issues #52, #54-#62 as "not planned"
- Optimized HOW_I_WORK.md from 357 to ~100 lines
- Planning to delete duplicate feature .md files
