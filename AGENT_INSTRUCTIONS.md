# Agent Instructions: Creating and Modifying Features

**Audience:** AI agents working in the MugAIn repository

**Repository:** Flotfyr2000/MugAIn (GitHub Issues stored in GitHub, not repository files)

---

## Quick Start Checklist

Before creating or modifying features:

1. ✅ Read **HOW_I_WORK.md** completely (field IDs, format requirements, workflow)
2. ✅ Read **NOMENCLATURE.md** (use correct terminology: "Chatbot" not "bot", etc.)
3. ✅ Review **FEATURE_UPDATE_GUIDE.md** (see current format and examples)
4. ✅ Check existing features for similar patterns using: `gh issue list --repo Flotfyr2000/MugAIn`

---

## Issues Are Stored in GitHub (NOT Repository Files)

**IMPORTANT:** All features/issues are managed via GitHub Issues API, not as files in the repository.

```bash
# Access issues via GitHub CLI
gh issue list --repo Flotfyr2000/MugAIn --limit 50
gh issue view 77 --repo Flotfyr2000/MugAIn
gh issue create --repo Flotfyr2000/MugAIn --title "..." --body-file feature.md
gh issue edit 77 --repo Flotfyr2000/MugAIn --body-file updated_feature.md
```

**DO NOT** create `.md` files in the repository for features. They belong in GitHub Issues only.

---

## Creating a New Feature

### Step 1: Understand the Requirement

**Ask Clarifying Questions if Needed:**
- What problem does this solve for users?
- What's the priority? (P0 MSP / P1 / P2 / P3)
- Which work stream? (Governance, Shareability, Tools, Security, Explainability, Training)
- What maturity? (Usually "Idea" for new features)
- Is this a full feature or just PO wishes?

**Default Maturity for New Features:** **Idea** (PO wishes only, no solution design)

### Step 2: Determine Feature Maturity & Content

| Maturity | What to Include | When to Use |
|----------|-----------------|-------------|
| **Idea** | Section 1 only (PO Wish List) + Feature Maturity note at bottom | User says "I want to explore...", "I have an idea for...", or feature is very early stage |
| **Ready for Tech** | All 7 sections (full format) | PO has reviewed, refined requirements, ready for tech lead evaluation |
| **Ready for Work** | All 7 sections (full format) | Tech lead approved, ready for implementation |

**Default:** When in doubt, use **Idea** maturity with PO wishes only.

### Step 3: Choose the Right Template

#### Template A: Idea Maturity (PO Wishes Only)

Use when user wants to capture an idea or early-stage requirement.

```markdown
## What I Want (PO Wish List)

As a [role], I need to [capability] so I can [benefit].

### Key Questions I Need to Answer

**[Category 1]:**
- Question 1
- Question 2

**[Category 2]:**
- Question 3
- Question 4

### Why This Matters

**[Reason 1]:**
- Explanation
- Impact

**[Reason 2]:**
- Explanation
- Impact

---

**Feature Maturity:** Idea (Early stage - PO wishes defined, solution not yet designed)

**Next Steps:**
- [What needs clarification]
- [Who to discuss with]
- [Open questions]
```

#### Template B: Full 7-Section Format

Use when feature is at "Ready for Tech" or "Ready for Work" maturity.

```markdown
## What I Want (PO Wish List)

[Plain language explanation - see Template A above]

## What It Should Do (MSP Acceptance Criteria)

### [Capability Group 1]
- [ ] Specific, testable requirement 1
- [ ] Specific, testable requirement 2

### [Capability Group 2]
- [ ] Another requirement
- [ ] Another requirement

## What's NOT in MSP

- ❌ Feature A (future enhancement - explain why not MSP)
- ❌ Feature B (out of scope - explain why)
- ❌ Feature C (separate feature - link to #XXX if exists)

## Success Looks Like

- Measurable outcome 1 (with numbers/percentages if possible)
- Measurable outcome 2
- User behavior change 3

## User Stories

**[Primary User Role]:**
As a [role], I want [action], so I can [benefit].

**[Secondary User Role]:**
As a [role], I want [action], so I can [benefit].

**[Edge Case User]:**
As a [role], I want [action], so I can [benefit].

## Development Checklist (For Jens)

### [Implementation Area 1: e.g., UI Components]
- [ ] Specific technical task 1
- [ ] Specific technical task 2

### [Implementation Area 2: e.g., Backend API]
- [ ] API endpoint 1
- [ ] API endpoint 2
- [ ] Data validation

### [Implementation Area 3: e.g., Data Model]
- [ ] Database schema changes
- [ ] Migration scripts

### [Implementation Area 4: e.g., Integration]
- [ ] Integration with Feature #X
- [ ] Integration with Feature #Y

## Technical Notes

**Data Model:**
```javascript
EntityName {
  field1: type // description
  field2: type // description
}
```

**API Endpoints:**
```
GET /api/resource
  Returns: [description]

POST /api/resource
  Body: {fields}
  Returns: [description]
```

**UI Specifications:**
- Component structure
- Interaction patterns
- Responsive behavior

**Integration Points:**
- Feature #X: [How they relate]
- Feature #Y: [How they relate]
- External system Z: [How they integrate]

**Performance Requirements:**
- Load time: < X seconds
- Response time: < Y milliseconds

**Access Control:**
- Who can access this feature
- Permission requirements

---

**Feature Maturity:** Idea | Ready for Tech | Ready for Work

**MSP Scope:**
- Key capability 1
- Key capability 2
- Key capability 3

**Future Features (separate):**
- ❌ Enhancement A (explain when/why later)
- ❌ Enhancement B (explain when/why later)
```

### Step 4: Set Required Fields

**MANDATORY: EVERY new feature MUST have:**

1. **Work Stream Emoji in Title**
   - 🔍 Explainability & Quality
   - 🌐 Shareability
   - 🔒 Security & Compliance
   - 🎯 Governance & Analytics
   - 🛠️ Tools & Capabilities
   - 📚 Training

2. **Type Label:** `type: feature`

3. **Work Stream Label:** `stream: [work-stream-name]`

4. **Priority Custom Field:**
   - P0 (MSP) - Must have for first sale
   - MSP Not discussed - MSP priority not yet evaluated
   - P1 - High priority post-MSP
   - P1 Not Discussed - P1 priority not yet evaluated
   - P2 - Medium priority
   - P3 - Low priority / future

5. **Feature Maturity Custom Field:**
   - Idea (default for new features)
   - Ready for Tech (after PO review)
   - Ready for Work (after tech lead approval)

### Step 5: Create the Feature

```bash
# 1. Write feature content to markdown file
# Use Template A (Idea) or Template B (Full) based on maturity

# 2. Create the issue with proper title format
gh issue create \
  --repo Flotfyr2000/MugAIn \
  --title "🎯 Feature Name Here" \
  --body-file feature_content.md \
  --label "type: feature" \
  --label "stream: governance-analytics"

# 3. Get the issue number from output (e.g., #118)

# 4. Set custom fields using GraphQL
# See HOW_I_WORK.md for complete field IDs and option IDs
```

### Step 6: Set Custom Fields

See **HOW_I_WORK.md** for the complete GraphQL mutation examples with all field IDs and option IDs.

**Key Field IDs:**
- Work Stream: `PVTSSF_lAHODqcU-c4BK4nTzg6qWtU`
- Priority: `PVTSSF_lAHODqcU-c4BK4nTzg7WfgA`
- Feature Maturity: `PVTSSF_lAHODqcU-c4BK4nTzg7ZcR4`

**Default Values for New Features:**
- Feature Maturity: "Idea" (option ID: `d88cd6fa`)
- Priority: "MSP Not discussed" (option ID: `a5413f21`) or as specified by user

---

## Modifying Existing Features

### Step 1: Read Current Content

```bash
# Get current issue body
gh issue view 77 --repo Flotfyr2000/MugAIn --json body --jq '.body' > feature_77_current.md

# Read the file to understand current state
```

### Step 2: Determine What Changed

**Common Modification Types:**

| Change Type | What to Do |
|-------------|------------|
| **Add implementation detail** | Update appropriate section (usually Section 7: Technical Notes or Section 2: Acceptance Criteria) |
| **Change priority** | Update custom field via GraphQL |
| **Change maturity** | If moving from Idea → Ready for Tech, expand to full 7 sections |
| **Add acceptance criteria** | Add to Section 2 with `- [ ]` checkboxes |
| **Clarify scope** | Update Section 3 (What's NOT in MSP) |
| **Add user story** | Add to Section 5 |
| **Add technical note** | Add to Section 7 |

### Step 3: Make the Update

**For Content Changes:**
```bash
# 1. Modify the content (edit the markdown file)

# 2. Update the issue
gh issue edit 77 --repo Flotfyr2000/MugAIn --body-file feature_77_updated.md
```

**For Custom Field Changes:**
```bash
# Use GraphQL mutations (see HOW_I_WORK.md for examples)
```

### Step 4: Maturity Transitions

**Idea → Ready for Tech:**
- Expand from Section 1 only → All 7 sections
- PO has reviewed and refined requirements
- Add detailed acceptance criteria, user stories, success metrics
- Update Feature Maturity field to "Ready for Tech"

**Ready for Tech → Ready for Work:**
- Ensure all 7 sections are complete and detailed
- Tech lead has reviewed and approved approach
- Development checklist is comprehensive
- Update Feature Maturity field to "Ready for Work"

---

## Common Scenarios

### Scenario 1: User Says "I Want Feature X"

**DO THIS:**
1. Ask clarifying questions about priority and work stream
2. Create feature at **Idea** maturity using **Template A**
3. Include only Section 1 (PO Wish List)
4. Set Feature Maturity = "Idea"
5. Set Priority as specified (default: "MSP Not discussed")

**Example:**
```
User: "I want to add a feature for exporting data to Excel"

You: "I'll create this as a governance & analytics feature at Idea maturity.
      What priority should this be? (P0 MSP / P1 / P2 / P3)"

User: "P2"

You: [Creates issue #119 with Template A, sets Priority = P2, Maturity = Idea]
```

### Scenario 2: User Provides Detailed Requirements

**DO THIS:**
1. Create feature at **Ready for Tech** maturity using **Template B**
2. Include all 7 sections
3. Set Feature Maturity = "Ready for Tech"
4. Fill in all sections based on user input

### Scenario 3: User Says "Add Slider UI to Feature #77"

**DO THIS:**
1. Read current feature #77 content
2. Determine best section for this detail:
   - If it's an acceptance criterion → Section 2
   - If it's an implementation detail → Section 6 or 7
3. Update the appropriate section
4. Don't change Feature Maturity unless user requests it

### Scenario 4: Expanding Idea → Ready for Tech

**DO THIS:**
1. Read current feature (Idea maturity, Section 1 only)
2. Expand to full 7 sections using Template B
3. Ask user clarifying questions if needed
4. Update issue with full content
5. Update Feature Maturity field to "Ready for Tech"

---

## Quality Checklist

Before finalizing any feature (create or modify), verify:

- [ ] Work stream emoji is in the title (🔍 🌐 🔒 🎯 🛠️ 📚)
- [ ] Title is clear and descriptive
- [ ] Correct terminology from NOMENCLATURE.md ("Chatbot" not "Bot", "Consumer" not "User")
- [ ] Feature Maturity is set correctly
- [ ] Priority is set
- [ ] Work stream label matches emoji
- [ ] Type label is set to "type: feature"
- [ ] Content follows appropriate template (A or B based on maturity)
- [ ] Acceptance criteria use `- [ ]` checkboxes (if full format)
- [ ] MSP scope is clearly defined at bottom
- [ ] Future features are marked with ❌ (if applicable)
- [ ] Technical notes include integration points with other features (if applicable)

---

## Common Mistakes to Avoid

❌ **DON'T:** Create feature markdown files in the repository
✅ **DO:** Create features via `gh issue create --repo Flotfyr2000/MugAIn`

❌ **DON'T:** Start solution design for Idea maturity features
✅ **DO:** Keep Idea features at PO wishes only (Section 1)

❌ **DON'T:** Forget work stream emoji in title
✅ **DO:** Always include emoji: "🎯 Feature Name"

❌ **DON'T:** Mix terminology (bot, user, workspace)
✅ **DO:** Use standard terms (chatbot, consumer/creator, team)

❌ **DON'T:** Skip custom fields (Priority, Feature Maturity, Work Stream)
✅ **DO:** Always set all 3 required custom fields

❌ **DON'T:** Use acceptance criteria without checkboxes
✅ **DO:** Always use `- [ ]` format for acceptance criteria

❌ **DON'T:** Assume feature is Ready for Tech without PO review
✅ **DO:** Default to Idea maturity unless user explicitly says it's refined

❌ **DON'T:** Create massive features covering multiple work streams
✅ **DO:** Split into focused, single-work-stream features

---

## Reference Files

**Essential Reading:**
- **HOW_I_WORK.md** - Complete workflow, field IDs, GraphQL examples
- **NOMENCLATURE.md** - Standard terminology (MUST USE)
- **FEATURE_UPDATE_GUIDE.md** - Examples of good features, update patterns
- **README.md** - Repository structure and quick reference

**Examples of Good Features:**
- #1 - Citation & Source Attribution (full 7 sections)
- #77 - Chatbot Analytics (full 7 sections with technical depth)
- #27 - Executive Dashboard (full 7 sections with complex requirements)
- #115 - Agent Impact Mapping (correct Idea maturity format)

---

## Quick Command Reference

```bash
# List all features
gh issue list --repo Flotfyr2000/MugAIn --label "type: feature" --limit 50

# View a feature
gh issue view 77 --repo Flotfyr2000/MugAIn

# Get feature body
gh issue view 77 --repo Flotfyr2000/MugAIn --json body --jq '.body'

# Create feature
gh issue create --repo Flotfyr2000/MugAIn \
  --title "🎯 Feature Name" \
  --body-file feature.md \
  --label "type: feature" \
  --label "stream: governance-analytics"

# Update feature
gh issue edit 77 --repo Flotfyr2000/MugAIn --body-file updated_feature.md

# Update title
gh issue edit 77 --repo Flotfyr2000/MugAIn --title "🎯 New Title"

# Add labels
gh issue edit 77 --repo Flotfyr2000/MugAIn --add-label "priority: P1"

# Search features
gh issue list --repo Flotfyr2000/MugAIn --search "analytics" --label "type: feature"
```

---

## Getting Help

**If you're unsure:**
1. Check HOW_I_WORK.md for field IDs and examples
2. Look at existing features (#1, #77, #27, #115) for patterns
3. Review FEATURE_UPDATE_GUIDE.md for format guidance
4. Default to Idea maturity if uncertain about feature completeness
5. Ask user clarifying questions before creating/modifying

**Remember:** Features are iterative. Start simple (Idea maturity), expand as requirements mature.
