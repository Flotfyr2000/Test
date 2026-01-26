# MugAIn Platform - Development Repository

This repository manages the MugAIn platform development, including feature planning, bug tracking, and lead management.

## Quick Start for AI Agents

**Essential Reading:**
1. **[HOW_I_WORK.md](HOW_I_WORK.md)** - Complete guide for working in this repository
2. **[NOMENCLATURE.md](NOMENCLATURE.md)** - Platform terminology and naming conventions

**Key Files:**
- `HOW_I_WORK.md` - Session guide, GitHub workflows, feature format, custom field IDs
- `NOMENCLATURE.md` - Standard terminology (sync with Wiki)
- `AUTOMATION_SETUP.md` - Lead tracking automation setup
- `SETUP_NOT_CONTACTED_OPTION.md` - Contact status field configuration

## Repository Structure

```
├── HOW_I_WORK.md          # Primary working guide
├── NOMENCLATURE.md        # Platform terminology
├── AUTOMATION_SETUP.md    # Workflow automation setup
├── .github/
│   ├── workflows/         # GitHub Actions workflows
│   └── scripts/           # Automation scripts
└── MugAIn/                # Legacy backlog (archived)
```

## GitHub Project

All features, bugs, and leads are tracked in GitHub Projects:
- **Project ID:** `PVT_kwHODqcU-c4BK4nT`
- **View:** https://github.com/users/Flotfyr2000/projects/1

### Custom Fields (Required for Every Issue)

1. **Type:** Feature / Lead / Bug
2. **Work Stream:** Explainability & Quality / Shareability / Security & Compliance / Governance & Analytics / Tools & Capabilities / Training
3. **Priority:** P0 (MSP) / MSP Not discussed / P1 / P1 Not Discussed / P2 / P3
4. **Feature Maturity:** Idea / Ready for Tech / Ready for Work

**Complete field IDs and option IDs are in [HOW_I_WORK.md](HOW_I_WORK.md#github-workflows)**

## Work Streams

Each work stream has a dedicated emoji for visual identification:

- 🔍 **Explainability & Quality** - Transparency, citations, testing
- 🌐 **Shareability** - Library, discovery, collaboration
- 🔒 **Security & Compliance** - Access control, audit, compliance
- 🎯 **Governance & Analytics** - Portfolio management, value tracking
- 🛠️ **Tools & Capabilities** - Data connectors, workflows, extensions
- 📚 **Training** - Documentation, onboarding, education

## Feature Format

All features follow a 7-section structure for Jens (dev/tech lead):

1. **What I Want (PO Wish List)** - Plain language
2. **What It Should Do (MSP Acceptance Criteria)** - Checkable requirements
3. **What's NOT in MSP** - Future enhancements
4. **Success Looks Like** - Measurable outcomes
5. **User Stories** - For reference
6. **Development Checklist (For Jens)** - Implementation tasks
7. **Technical Notes** - Implementation details

See [HOW_I_WORK.md](HOW_I_WORK.md#feature-format-for-jens) for complete format.

## Strategic Context

**MSP Focus (Minimum Sellable Product):**
- Building toward first commercial sale
- MSP features must be production-ready, customer-facing quality
- Prioritizing features that enable self-service and scale without team growth

**Democratization:**
- Enable process experts to build their own chatbots
- Reduce dependency on training/implementation resources
- Shareability work stream is key to scaling

## For New AI Agents

When starting a new session:
1. Read `HOW_I_WORK.md` completely
2. Check `git log` for recent commits
3. Review open issues in GitHub Projects
4. Follow the feature format and custom field requirements
5. Always set work stream emoji in issue titles
6. Default new features to "Idea" maturity

## Terminology

Use standard terminology from [NOMENCLATURE.md](NOMENCLATURE.md):
- ✅ "Chatbot" or "Agent" (not "bot")
- ✅ "Consumer" or "Creator" (not generic "user")
- ✅ "Team" (not "workspace")
- ✅ "Library" for discovery, "Selector" for picking
- ✅ "Tags" (not "keywords")

## Contact

For questions about this repository structure, refer to HOW_I_WORK.md or check recent git commit messages.
