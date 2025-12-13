---
description: Create a memory document for a solved issue or completed implementation
allowed-tools: ["Write", "Edit", "Read"]
---

Create a structured memory document for a recently solved issue or completed implementation and add it to the project's knowledge base.

This command will:
1. Guide you through creating a comprehensive memory document
2. Follow the established memory template format
3. Add the new documentation to the memory table of contents
4. Ensure knowledge is preserved for future reference

## When to Use

### For Issue Documentation
Use immediately after solving any significant issue, especially:
- Bugs that took more than 30 minutes to diagnose
- Configuration problems with unclear error messages
- Issues that required deep investigation or multiple attempts
- Problems that are likely to recur or affect other developers
- Any time you learn something non-obvious about the codebase

### For Implementation Documentation
Use after completing major implementations, especially:
- New architectural components or services
- Significant refactoring or system changes
- Complex features with multiple moving parts
- Implementations that others will need to understand or extend
- Architecture decisions that impact future development

## Memory Document Structure

The command will create a document with sections appropriate to the type:

### For Issue Documentation (type: incident)
#### Required Sections
- **Problem**: Clear, concise description of the issue
- **Symptoms**: What the user/developer sees when the problem occurs
- **Root cause**: Technical explanation of why the problem happens
- **Fix**: Step-by-step solution with code examples where applicable
- **Prevention**: How to avoid this issue in the future

### For Implementation Documentation (type: implementation)
#### Required Sections
- **Overview**: What was accomplished and why
- **What was implemented**: Specific deliverables and features
- **Architecture**: Key architectural decisions and components
- **Implementation details**: Technical approach and key code
- **Lessons learned**: Insights gained during development

### For Pattern Documentation (type: pattern)
#### Required Sections
- **Overview**: Pattern summary
- **Context**: When/where the pattern applies
- **Pattern description**: Detailed explanation
- **Examples**: Code demonstrating the pattern
- **When to apply**: Criteria for using this pattern
- **Anti-patterns**: What NOT to do

### For Decision Documentation (type: decision)
#### Required Sections
- **Context**: Situation requiring a decision
- **Decision**: What was chosen and why
- **Consequences**: Expected outcomes and implications
- **Alternatives Considered**: Other options and why they were rejected

## YAML Frontmatter Schema

Every memory document must include:

```yaml
---
id: filename_without_extension
title: Human Readable Title
type: implementation | incident | pattern | decision
date: YYYY-MM-DD
status: done | active | deprecated
severity: low | medium | high | critical  # For incidents only
components: [component1, component2, etc.]
tags: [tag1, tag2, etc.]
summary: >
  One or two lines describing the content for agent context.
---
```

## File Naming Convention

Memory files use snake_case and should be descriptive:

### Issue Documentation:
- `database_connection_pool_exhaustion.md`
- `svg_rendering_broken_icons.md`
- `api_timeout_configuration.md`

### Implementation Documentation:
- `user_authentication_service.md`
- `real_time_streaming_system.md`
- `config_management_refactor.md`

## Integration with Memory System

The command will automatically:
1. Create the memory document in `_memory/` directory
2. Add an entry to `_memory/TOC.md` in the Quick Reference section
3. **Append new entry to the Chronological History section** with format: `- **YYYY-MM-DD** - [Title](./filename.md)`
4. Follow the established template structure for the document type

## Best Practices

### Writing Effective Issue Documentation
- **Be Specific**: Include exact error messages, file paths, and symptoms
- **Include Context**: Explain when/how the issue typically occurs
- **Show Code**: Provide before/after code examples for clarity
- **Think Future**: Write for someone who has never seen this problem before
- **Test Instructions**: Verify that your solution steps actually work

### Writing Effective Implementation Documentation
- **Explain Decisions**: Document why specific architectural choices were made
- **Include Examples**: Show key code patterns and usage examples
- **Cover Tradeoffs**: Explain what was considered but not chosen
- **Future-Oriented**: Document migration paths and extension points

## Compliance

This command supports the memory-first development approach by ensuring that all significant work is properly documented and discoverable for future reference.
