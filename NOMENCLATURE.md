# MugAIn Platform Nomenclature

**Last Updated:** 2026-01-20

This document defines the standard terminology used across the MugAIn platform. Keep this aligned with the GitHub Wiki version for the broader team.

---

## Core Concepts

**Chatbot**
- The AI assistant that users interact with
- Also called "Agent" (used interchangeably)
- Example: "Deviation Investigation Assistant"

**Consumer**
- User who uses/interacts with chatbots
- Has "Consumer" role in a team

**Creator / Builder**
- User who creates and edits chatbots
- Has "Admin" role in a team

**Agent**
- Synonym for Chatbot
- Used in UI: "Select Agent" button

---

## Platform Structure

**Tenant**
- The top-level organization (company)
- Everyone in the same company belongs to one tenant
- Example: "Acme Pharma"

**Team**
- A department or group within the tenant
- Chatbots belong to teams
- Users can belong to multiple teams
- Example: "Quality Team", "Production Team"

**Personal Team**
- Each user's private workspace
- Auto-created for every user
- Only that user is a member (as Admin)
- Used for building/testing before publishing to production team

**Admin (Team Role)**
- Can create, edit, and delete chatbots in the team
- Can manage team members and settings

**Consumer (Team Role)**
- Can use chatbots in the team
- Cannot edit or create chatbots

---

## Sharing & Discovery

**Library**
- Searchable catalog of published chatbots
- Tenant-wide discovery (anyone can browse)
- For finding and getting access to new chatbots
- Example: Browse library to discover what colleagues built

**Selector (Agent Picker)**
- Quick picker for chatbots you already have access to
- For selecting which chatbot to use right now
- Shows pinned favorites + all consumable chatbots
- NOT for discovery - that's the Library

**Published / Shareable**
- Chatbot marked as "published to library"
- Appears in tenant-wide library
- Discoverable by anyone in the tenant

**Shareable Link**
- Direct URL to access a chatbot
- Example: `app.mugain.com/chat/abc123`
- Works for anyone in tenant (respects access control)
- Can be enabled separately from library publishing

**Tags**
- Labels for categorizing chatbots
- Example: "deviation", "HPLC", "quality", "batch release"
- Used for filtering and searching in library
- Minimum 3 tags required to publish to library

---

## Configuration

**Instructions**
- The prompt/guidance the chatbot follows
- What the chatbot does and how it behaves
- Can be freeform text or structured (using Structured Instruction Builder)

**Data Sources**
- External data connected to chatbot
- Example: SharePoint documents, databases, FDA warning letters
- Chatbot uses this data to answer questions

**Tools**
- Capabilities the chatbot can use
- Example: Calculator, Data Analysis, External API, Code Interpreter
- Must be explicitly enabled by creator

**Guardrails**
- Rules that constrain chatbot behavior
- Example: Scope enforcement, Citation required, GMP compliance
- Ensures chatbot stays within boundaries

**LLM / Model**
- The AI language model powering the chatbot
- Example: GPT-4, GPT-3.5, Claude Sonnet, Claude Opus
- Selected in chatbot editor

---

## Access Control

**Team Access (Default)**
- Team members can access team chatbots automatically
- No additional configuration needed

**Published to Library**
- Anyone in tenant can discover in library
- May still have AD group restrictions

**AD Groups**
- Active Directory groups for access control
- Example: "Quality_Team_Members"
- Restricts who can use a chatbot beyond team membership

**Access Requirements**
- Free text explaining how to get access
- Shows when user doesn't have access
- Example: "Contact Lars on Quality team to be added to QA group"

---

## Usage & Analytics

**Session**
- A single conversation with a chatbot
- Continuous interaction (30 min timeout between messages)

**Query / Prompt**
- User's message to the chatbot
- What the user asks

**Response**
- Chatbot's reply to the user

**Traffic Statistics**
- Total sessions (all time)
- Unique users (last 90 days)
- Shown in library to indicate chatbot popularity

**Contact Person**
- Person to contact about a chatbot
- Defaults to creator, can be changed
- Shown in library and selector

---

## Editing & Building

**Chatbot Editor**
- Interface for creating and editing chatbots
- Where you configure name, instructions, tools, etc.

**Overview Section**
- Basic settings: Name, description, team, contact person

**Instructions Section**
- Where you write chatbot instructions
- Freeform text editor (MVP)

**Tools Section**
- Where you enable tools (calculator, data analysis, etc.)

**Make Public / Shareability**
- Settings for publishing to library and enabling shareable links
- Configure tags, access control, privacy settings

**Testing Mode**
- Test chatbot before publishing
- Embedded chat interface in editor

---

## Technical Terms

**API**
- Application Programming Interface
- How systems communicate with each other

**LLM**
- Large Language Model
- The AI that powers chatbots

**Temperature**
- Controls creativity vs consistency of responses
- Lower = more focused, Higher = more creative

**Tokens**
- Units of text the AI processes
- Used for measuring response length and cost

**Embedding**
- Vector representation of text for semantic search

---

## Avoid / Don't Use

❌ **"Bot"** - Use "Chatbot" or "Agent"
❌ **"User"** - Be specific: "Consumer" or "Creator/Admin"
❌ **"Workspace"** - Use "Team" or "Personal Team"
❌ **"Prompt Library"** - Could be confused with Chatbot Library, use specific feature names
❌ **"Published"** alone - Clarify: "Published to Library" or "Shareable"

---

## Usage Examples

**Correct:**
- "Select an agent from the selector"
- "Browse the library to discover chatbots"
- "Publish your chatbot to the library"
- "Add tags to improve discoverability"
- "This chatbot belongs to the Quality Team"

**Incorrect:**
- "Pick a bot from the library" ❌ (Library is for discovery, Selector is for picking)
- "Share your agent" ❌ (Unclear - publish to library? Enable shareable link?)
- "Add keywords" ❌ (We call them "tags")

---

## Wiki Sync

This file should be kept in sync with the GitHub Wiki page for the broader team:
`https://github.com/Flotfyr2000/MugAIn/wiki/Nomenclature`

When updating, update both locations.
