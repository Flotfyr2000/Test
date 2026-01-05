# How I Work - Claude Code Session Guide

**Purpose:** This document captures my working methodology and preferences for Claude Code sessions to ensure consistency and continuity across sessions.

**Last Updated:** 2025-12-19
**Status:** Living document - updated as we discover patterns

---

## Work Organization Philosophy

### Work Streams vs Features

**Work Streams** are ongoing categories of work that never "complete" - they represent continuous areas of focus.

**Features** are finite, deliverable outcomes within work streams.

#### Example from MugAIn Project:
- **Work Stream:** "Explainability & Quality" (ongoing focus area)
  - **Feature 1.1:** "See Received Context (RAG Transparency)" (finite deliverable)
  - **Feature 1.2:** "Visual Data Lineage" (finite deliverable)

### Backlog Structure Preferences

Based on MugAIn project structure:
- Organize product backlog by work streams
- Each feature has clear acceptance criteria (checkboxes)
- Priority levels: P0 (MVP/Critical), P1 (High), P2 (Medium), P3 (Low)
- Features marked as MVP when part of initial delivery

---

## Session Management

### Session Continuity

**Observed Issue (2025-12-19):**
- Claude Code sessions are ephemeral - conversation history cannot be recovered after closing
- Only code changes, git commits, and files persist
- This creates need for clear documentation of work progress

**Current Approach:**
- Use git commits to track completed work
- Maintain backlogs in markdown files (PRODUCT_BACKLOG.md, BUG_BACKLOG.md)
- README.md serves as project overview and entry point

### Recovery After Session Loss

When starting a new session:
1. Check git log to see recent commits
2. Review backlog files to understand current state
3. Check this HOW_I_WORK.md for methodology preferences

---

## Project Structure Preferences

### Standard Files

Based on MugAIn project:
```
Project/
├── README.md                    # Project overview, philosophy, getting started
├── PRODUCT_BACKLOG.md           # Features organized by work streams
├── BUG_BACKLOG.md              # Bug tracking with severity levels
├── HOW_I_WORK.md               # This file - methodology documentation
├── .github/
│   └── ISSUE_TEMPLATE/
│       ├── feature.md          # Template for feature issues
│       └── bug.md              # Template for bug issues
└── .claude/
    └── settings.local.json     # Claude Code settings
```

---

## Documentation Preferences

### README Structure (observed from MugAIn)

1. **Overview** - Vision and philosophy
2. **Key differentiators** - What makes this unique
3. **Architecture/Approach** - How it works
4. **Project Structure** - File organization
5. **Backlog Structure** - Epic/work stream overview
6. **Getting Started** - For different roles (PM, Dev, QA)
7. **Key Messaging** - Communication guidelines

### Backlog Documentation

- Clear acceptance criteria with checkboxes
- Priority clearly marked
- Features grouped by work stream
- MVP items clearly identified
- Last updated date and version at bottom

---

## Git Workflow Preferences

### Observed Patterns

From MugAIn commit:
```
Initial MugAIn backlog structure with 6 work streams

- Complete product backlog with 6 work streams
- 40+ features across Explainability, Shareability, Security, Governance, Tools, and Training
- GitHub issue templates for features and bugs
- README and BUG_BACKLOG documentation
- Ready for GitHub Projects integration
```

**Commit message style:**
- Clear summary line
- Bullet points describing what was included
- Forward-looking statement (e.g., "Ready for GitHub Projects integration")

---

## Communication Preferences

### Guidance Style

**Preference:** Very explicit, step-by-step guides
- I am new to GitHub and need detailed instructions
- Don't assume prior knowledge
- Include each click, button, and field explicitly

### Working Style

**Preference:** Proactive execution
- Run commands directly instead of asking permission first
- If you can check something or verify status, do it immediately
- Show me results and next steps, don't wait for me to ask
- Be proactive, not reactive

### Information Delivery

**Preference:** Present information directly in chat
- Show guides, instructions, and documentation in the conversation
- Don't just create files and tell me to open them elsewhere
- I want to read and work from the chat interface
- Still create the files for reference, but present content to me here first

---

## Tools & Integrations

### GitHub Projects Integration

Recommended setup from MugAIn:
- Project board columns: Backlog, Sprint Ready, In Progress, In Review, Done
- Labels for: work streams, priority, type, status, special tags (mvp, quick-win, customer-request)
- Convert backlog items to GitHub Issues
- Use milestones for sprints

**Custom Field: Work Stream**
- Created custom "Work Stream" field with 6 options (Explainability & Quality, Shareability, Security & Compliance, Governance & Analytics, Tools & Capabilities, Training)
- Field synced with labels using `MugAIn/sync_work_streams.sh` script
- Allows grouping by work stream in project views

**Sub-Issues:**
- Use GitHub's native sub-issues feature for breaking down features into tasks
- Sub-issues MUST inherit parent's work stream (both label AND custom field)
- Process: Create sub-issue → Add work stream label → Run sync script OR manually set Work Stream field
- Sub-issues appear in project board in same work stream column as parent
- Parent issues show progress: "X of Y sub-issues completed"

---

## Areas to Explore Further

- [ ] Preferred level of detail for feature specifications
- [ ] How to handle feature dependencies
- [ ] Sprint planning approach
- [ ] When to create new documentation vs updating existing
- [ ] Preferences for handling technical debt
- [ ] Communication style preferences (formal vs casual, detail level, etc.)

---

## Session Notes

### Session 2025-12-19

**Context:** User asked about deleted Claude Code session and feature overview
**Discovery:**
- Realized sessions are ephemeral and need documentation for continuity
- Created this HOW_I_WORK.md document to capture methodology
- Using MugAIn project as reference for preferences
- User was previously working on setting up GitHub Projects to visualize backlog
- User wants to leverage work stream structure for organization and overview

**Actions:**
- Created living documentation to support future sessions
- Documented communication preference for explicit step-by-step guides
- Created detailed GitHub Projects setup guide
- Created all 51 GitHub issues from PRODUCT_BACKLOG.md
- Set up custom "Work Stream" field in GitHub Project
- Synced all issues with Work Stream values based on labels

**Key Learning - Sub-Issues:**
- GitHub's native sub-issues feature provides hierarchy
- Sub-issues MUST inherit parent's work stream (both label AND custom field)
- Created test sub-issues for issues #1-4 to validate hierarchy view
- Process documented: Create sub-issue → Add labels → Sync Work Stream field
- All sub-issues must appear in same work stream column as parent in project board

---

**Note:** This is a living document. Add insights as we discover working patterns and preferences.
