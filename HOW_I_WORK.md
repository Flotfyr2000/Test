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

Required fields: Work Stream, Priority, AI Generated

**Process:**
1. Create issue via `gh issue create`
2. Get project item ID via GraphQL
3. Set all three custom fields via GraphQL mutations

**Technical IDs:**
- Project ID: `PVT_kwHODqcU-c4BK4nT`
- Work Stream Field ID: `PVTSSF_lAHODqcU-c4BK4nTzg7ZcR4`
- Priority Field ID: (varies by option)
- AI Generated Field ID: `PVTSSF_lAHODqcU-c4BK4nTzg7ZcR4`
  - "Yes" option: `d88cd6fa`
  - "Human Assessed" option: `674b8489`

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
