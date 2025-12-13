# Memory Documentation Standards

This document defines the standardized format for all memory documentation to enable efficient agent retrieval and human readability.

## YAML Frontmatter (Required)

All memory documents must include structured metadata:

```yaml
---
id: filename_without_extension
title: Human Readable Title
type: implementation | incident | pattern | decision
date: YYYY-MM-DD
status: done | active | deprecated
severity: low | medium | high | critical  # incidents only
components: [component1, component2, etc.]
tags: [tag1, tag2, etc.]
summary: >
  One or two lines describing the content for agent context
---
```

## Canonical Section Headings

### For Implementation Documents
```markdown
## Overview
## What was implemented
## Architecture
## Implementation details
## Verification
## Lessons learned
## Related
```

### For Incident Documents
```markdown
## Problem
## Symptoms
## Root cause
## Fix
## Verification
## Prevention
## Related
```

### For Pattern Documents
```markdown
## Overview
## Context
## Pattern description
## Examples
## When to apply
## Anti-patterns
## Related
```

### For Decision Documents
```markdown
## Context
## Decision
## Consequences
## Alternatives Considered
## Related
```

## Document Types

- **implementation**: Features built, systems created, architectural improvements
- **incident**: Problems encountered and solutions implemented
- **pattern**: Best practices, methodologies, and architectural guidelines
- **decision**: Architectural decisions and trade-offs

## Canonical Component Names

Use these standardized component tags (customize for your project):

- `frontend` - User interface and client-side code
- `backend` - Server-side application logic
- `api` - API endpoints and contracts
- `database` - Data storage and persistence
- `auth` - Authentication and authorization
- `infrastructure` - DevOps, deployment, CI/CD
- `testing` - Test frameworks and utilities
- `documentation` - Docs and knowledge management

## Common Tags

Frequently used tags for cross-cutting concerns:

- `architecture` - Architectural patterns and decisions
- `ui` - User interface and experience
- `configuration` - Settings and configuration management
- `debugging` - Debug tools and methodologies
- `serialization` - Data serialization issues
- `type-conversion` - Type conversion problems
- `design-pattern` - Software design patterns
- `framework` - Framework-level implementations
- `best-practices` - Development best practices
- `performance` - Performance optimization
- `security` - Security concerns and fixes

## Usage Guidelines

### When to Create Memory Documents

1. **After solving significant issues** - Any problem that took substantial investigation
2. **After completing major implementations** - New features, architectural changes
3. **When documenting patterns** - Best practices, guidelines, methodologies
4. **For architectural decisions** - Important trade-offs and design choices

### Writing Guidelines

1. **Clear summaries** - Make the summary immediately useful for agent context
2. **Complete sections** - Include all canonical sections, even if brief
3. **Code examples** - Include relevant code snippets where helpful
4. **Cross-references** - Link to related memory documents
5. **Concrete details** - Avoid vague descriptions; be specific about symptoms and solutions

### Maintenance

- Update `TOC.md` when adding new documents:
  - Add entries to the Quick Reference section for searchability
  - **Append new entry to Chronological History section** with format: `- **YYYY-MM-DD** - [Title](./filename.md)`
- Keep documents current - mark deprecated approaches as `status: deprecated`
- Use consistent terminology across documents
- Regular review for outdated information

## Agent Usage

This standardized format enables agents to:

- **Triage by metadata** - Use frontmatter for routing and prioritization
- **Search by components** - Find domain-specific expertise
- **Filter by type** - Group similar problem classes
- **Prioritize by severity** - Handle critical incidents first
- **Discover via tags** - Find cross-cutting concerns

The structured format transforms institutional knowledge into machine-readable intelligence while preserving human readability.
