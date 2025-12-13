---
description: Initialize the memory system for this project
allowed-tools: ["Write", "Read", "Bash"]
---

Initialize the institutional memory system for this project by creating the `_memory/` directory structure.

## Task

1. Check if `_memory/` directory already exists
2. If it exists, inform the user and skip initialization
3. If it doesn't exist, create the following structure:

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

After creating the files, confirm success to the user.
