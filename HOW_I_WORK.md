# How I Work - Claude Code Session Guide

**Last Updated:** 2026-01-09

---

## Work Organization

**Work Streams** are ongoing categories; **Features** are finite deliverables.

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

---

## Session Recovery

When starting new session:
1. Check git log for recent commits
2. Review backlog files for current state
3. Read this HOW_I_WORK.md for methodology

---

## GitHub Workflows

### Creating Issues - CRITICAL Custom Fields

**ALWAYS set custom fields after creating any GitHub issue:**

Required fields: Type, Work Stream, Priority, AI Generated

**Process:**
1. Create issue via `gh issue create`
2. Get project item ID via GraphQL
3. Set all four custom fields via GraphQL mutations

**Technical IDs:**
- Project ID: `PVT_kwHODqcU-c4BK4nT`
- Type Field ID: `PVTSSF_lAHODqcU-c4BK4nTzg7x_qM`
  - "Feature" option: `35f63a0a`
  - "Lead" option: `28e866a9`
  - "Bug" option: `694a9c34`
- Work Stream Field ID: `PVTSSF_lAHODqcU-c4BK4nTzg7ZcR4`
- Priority Field ID: (varies by option)
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

---

## Strategic Priorities

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
