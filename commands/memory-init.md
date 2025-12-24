---
description: Initialize the memory system for this project
allowed-tools: ["Write", "Read", "Bash", "Edit"]
---

Initialize the institutional memory system for this project by creating the `_memory/` directory structure.

## Task

1. Check if `_memory/` directory already exists
2. If it exists, inform the user and skip initialization
3. If it doesn't exist, create the following structure:
4. **Update CLAUDE.md** (or create if it doesn't exist) to include the Memory Check Protocol (see below)

### _memory/TOC.md

```markdown
# Memory Table of Contents

Lessons learned, solutions to common issues, and documentation of major implementations.

See [DOCS.md](./DOCS.md) for documentation standards.

## Quick Reference

**Implementation Records:**
- Memory system setup → Check [Memory System Setup](./memory_system_setup.md)

**Architectural Principles:**
- [Add entries as you document patterns]

**Common Issues:**
- [Add entries as you solve issues]

## Chronological History

- **{{TODAY}}** - [Memory System Setup](./memory_system_setup.md)
```

### _memory/DOCS.md

```markdown
# Memory Documentation Standards

## YAML Frontmatter (Required)

```yaml
---
id: filename_without_extension
title: Human Readable Title
type: implementation | incident | pattern | decision
date: YYYY-MM-DD
status: done | active | deprecated
components: [component1, component2]
tags: [tag1, tag2]
summary: >
  Brief description for agent context
---
```

## Document Types

| Type | Use For | Key Sections |
|------|---------|--------------|
| incident | Bugs, issues | Problem, Symptoms, Root cause, Fix, Prevention |
| implementation | Features, systems | Overview, Architecture, Implementation details, Lessons learned |
| pattern | Best practices | Context, Pattern description, Examples, Anti-patterns |
| decision | Architectural choices | Context, Decision, Consequences, Alternatives |

## Components

Customize this list for your project:
- frontend
- backend
- api
- database
- infrastructure

## When to Document

- Issues taking >30 minutes to diagnose
- Non-obvious solutions
- New features or architectural changes
- Important design decisions
```

### _memory/memory_system_setup.md

```markdown
---
id: memory_system_setup
title: Memory System Setup
type: implementation
date: {{TODAY}}
status: done
components: [documentation]
tags: [setup, knowledge-management]
summary: >
  Initial setup of institutional memory system.
---

# Memory System Setup

## Overview

Initialized the memory system plugin for capturing lessons learned and architectural decisions.

## What was implemented

- Created `_memory/` directory
- Set up TOC.md quick reference index
- Established documentation standards in DOCS.md
- Enabled `/documentmemory` command for creating new entries

## Usage

1. Before any work: Check `_memory/TOC.md` for existing solutions
2. After solving issues: Run `/documentmemory` to capture knowledge
3. Use `/memory-search` to find relevant memory documents

## Lessons learned

Document as you use the system.
```

Replace `{{TODAY}}` with the current date in YYYY-MM-DD format.

### CLAUDE.md Memory Protocol Section

Add the following section to the project's `CLAUDE.md` file (create the file if it doesn't exist). If CLAUDE.md already has content, prepend this section at the top or after any existing project title/overview:

```markdown
## 🚨 MANDATORY MEMORY CHECK PROTOCOL 🚨

**⚠️ STOP: BEFORE ANY TROUBLESHOOTING ERRORS OR IMPLEMENTING NEW FEATURES - CHECK MEMORY FIRST ⚠️**

**STEP 1: ALWAYS READ `_memory/TOC.md` FIRST**
- Before investigating ANY issue
- Before implementing ANY feature
- Before making ANY architectural decisions

**STEP 2: SEARCH THE QUICK REFERENCE**
- Look for exact symptom matches
- Check implementation patterns
- Find related architectural guidance

**STEP 3: READ THE RELEVANT MEMORY DOCUMENT**
- Follow documented solutions EXACTLY
- Use implementation insights and patterns
- Understand why previous decisions were made

**STEP 4: ONLY IF NO MEMORY EXISTS**
- Proceed with investigation
- CREATE A NEW MEMORY DOCUMENT after solving
- UPDATE `_memory/TOC.md` by appending entry to Chronological History section

### Golden Rules

1. **🚨 MEMORY FIRST - NO EXCEPTIONS**: The memory check protocol above is MANDATORY.
2. **Document Lessons Learned**: After solving significant issues OR completing major implementations, add them to `_memory/` with proper documentation. See `_memory/DOCS.md` for format.
```

**Note**: Adjust the protocol language to match the project's scope and domain. For example:
- For a web app: mention common issues like "API timeout", "auth errors"
- For a mobile app: mention "connection refused", "SDK issues"
- For a library: mention "breaking changes", "API compatibility"

## Working with Multiple Directories

When the user adds additional directories to the Claude Code session (outside the main project root), you should:

1. **Check for memory files in those directories**: Look for `_memory/` folders in any added directories
2. **Cross-reference memory systems**: If the external directory has its own memory system, check its `TOC.md` for relevant patterns or solutions
3. **Respect separate memory scopes**: Each project's `_memory/` contains knowledge specific to that project - don't merge them, but do reference them when working across projects
4. **Document cross-project learnings**: If you learn something from one project that applies to another, document it in the appropriate project's memory

After creating the files and updating CLAUDE.md, confirm success to the user.
