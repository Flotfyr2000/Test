# Feature Update Guide

**Status:** Many features need updating to follow current best practice format.

## Current Best Practice: 7-Section Format

All features should follow this structure (see HOW_I_WORK.md for details):

1. **What I Want (PO Wish List)** - Plain language explanation of what the PO wants
2. **What It Should Do (MSP Acceptance Criteria)** - Checkable `- [ ]` list items grouped by functionality
3. **What's NOT in MSP** - Clear exclusions (future enhancements)
4. **Success Looks Like** - Measurable outcomes
5. **User Stories** - For reference and context
6. **Development Checklist (For Jens)** - Checkable technical tasks organized by area
7. **Technical Notes** - Detailed implementation info (data models, APIs, UX specs)

## Feature Maturity

At the bottom of each feature:

```markdown
---

**Feature Maturity:** Idea | Ready for Tech | Ready for Work

**MSP Scope:**
- List key capabilities in MSP

**Future Features (separate):**
- ❌ Features not in MSP scope
```

## Features Updated to Best Practice

✅ **#1** - Citation & Source Attribution (full 7 sections)
✅ **#65** - Semantic Search (full 7 sections)
✅ **#105** - Tenant & Team Structure (full 7 sections)
✅ **#73** - Chatbot Editor Fundamentals (almost complete, missing Dev Checklist)
✅ **#77** - Chatbot Analytics & Value Tracking (full 7 sections, added slider UI)
✅ **#27** - Executive Dashboard (full 7 sections, added CSV export)

## Features at Idea Maturity (Correct Format)

These features are correctly formatted for Idea maturity (PO wishes only):

✅ **#115** - Agent Impact & Scope Mapping
✅ **#116** - Portfolio Optimization
✅ **#117** - Compliance & Risk Assessment

## Features Needing Update

### P0/MSP Features (High Priority)

These critical features need full 7-section format:

- [ ] **#24** - Platform Health Monitoring (very brief, needs expansion)
- [ ] **#33** - Plugins - MSP offerings (brief, needs expansion)
- [ ] **#32** - Audit Trails (brief, needs expansion)
- [ ] **#20** - Secure API Design (brief, needs expansion)
- [ ] **#18** - User-Scoped Data Access (brief, needs expansion)
- [ ] **#17** - Authentication & Authorization (brief, needs expansion)
- [ ] **#16** - Data Encryption (brief, needs expansion)
- [ ] **#7** - Guardrails framework (has good structure, needs reformatting)
- [ ] **#3** - Translate Visual data lineage (has good structure, needs reformatting)
- [ ] **#2** - Visual Data Lineage (has good structure, needs reformatting)

### P1 Features (Medium Priority)

These features should follow the 7-section format:

- [ ] **#110** - Agent Tags
- [ ] **#109** - Chatbot Selector
- [ ] **#107** - Chatbot Editor - Tools (MVP)
- [ ] **#104** - Make Chatbots Public (has good content, needs reformatting)
- [ ] **#101** - Structured User Queries
- [ ] **#76** - Agentic Workflow Orchestration
- [ ] **#75** - Collaborative Chat Sessions
- [ ] **#74** - Chatbot Performance Testing
- [ ] **#72** - Prompt Pattern Library
- [ ] **#70** - Structured Instruction Builder
- [ ] **#69** - Thinking Tokens Visibility
- [ ] **#68** - Answer Quality Assessment
- [ ] **#67** - Intended Use Enforcement Guardrail
- [ ] **#66** - Grounding Verification Guardrail
- [ ] **#64** - Source System Verification Framework
- [ ] **#50** - Live Training Sessions
- [ ] **#49** - Community Forums
- [ ] **#48** - Case Studies Library
- [ ] **#44** - Interactive Learning Paths
- [ ] **#42** - Onboarding Tutorials
- [ ] **#37** - Tool Marketplace
- [ ] **#34** - Code Mode
- [ ] **#30** - Risk Categorization
- [ ] **#29** - Policy Enforcement
- [ ] **#28** - Approval Workflows

### P2/P3 Features (Lower Priority)

Can be updated when they move closer to active development.

## Old Format → New Format Mapping

| Old Section | New Section |
|-------------|-------------|
| Description | What I Want (PO Wish List) |
| Acceptance Criteria | What It Should Do (MSP Acceptance Criteria) - use `- [ ]` checkboxes |
| Out of Scope | What's NOT in MSP |
| (new) | Success Looks Like |
| User Stories | User Stories (keep as-is) |
| (new) | Development Checklist (For Jens) |
| Technical Considerations | Technical Notes |
| Dependencies | Technical Notes (merge into this section) |
| Relationship to Other Features | Technical Notes - Integration Points |

## Update Process

For each feature:

1. **Read current content** - Understand what's already documented
2. **Extract PO intent** - What does the PO actually want? (Section 1)
3. **Define acceptance criteria** - What makes this "done"? Use checkboxes (Section 2)
4. **Clarify scope** - What's explicitly NOT included? (Section 3)
5. **Set success metrics** - How do we know it's successful? (Section 4)
6. **Keep user stories** - Usually already exist (Section 5)
7. **Create dev checklist** - Break down technical implementation (Section 6)
8. **Consolidate tech details** - Data models, APIs, UX specs (Section 7)

## Template for New Features

```markdown
## What I Want (PO Wish List)

[Plain language: As a [role], I want [capability], so that [benefit]]

### Key Questions / Why This Matters

- What problems does this solve?
- Who benefits and how?

## What It Should Do (MSP Acceptance Criteria)

### [Capability Group 1]
- [ ] Specific, testable requirement
- [ ] Another specific requirement

### [Capability Group 2]
- [ ] More requirements

## What's NOT in MSP

- ❌ Feature A (future enhancement)
- ❌ Feature B (out of scope)

## Success Looks Like

- Measurable outcome 1
- Measurable outcome 2

## User Stories

**[Role]:**
As a [role], I want [action], so I can [benefit].

## Development Checklist (For Jens)

### [Implementation Area 1: UI]
- [ ] Task 1
- [ ] Task 2

### [Implementation Area 2: API]
- [ ] Task 1
- [ ] Task 2

### [Implementation Area 3: Data Model]
- [ ] Task 1

## Technical Notes

**Data Model:**
[Code blocks showing schemas]

**API Endpoints:**
[List of endpoints with brief descriptions]

**Integration Points:**
- Feature #X: [relationship]
- Feature #Y: [relationship]

---

**Feature Maturity:** Idea

**MSP Scope:**
- Key capability 1
- Key capability 2

**Future Features (separate):**
- ❌ Enhancement A
- ❌ Enhancement B
```

## Next Steps

1. Update P0/MSP features first (11 features)
2. Update P1 features as they approach development (25 features)
3. P2/P3 features can wait until prioritized

**Estimated Effort:** 30-45 minutes per feature for substantial updates, 10-15 minutes for reformatting existing good content.
