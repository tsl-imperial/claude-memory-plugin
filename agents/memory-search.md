---
description: Search memory documents for relevant solutions and patterns
tools: ["Read", "Glob", "Grep"]
---

Search the `_memory/` directory for documents relevant to the current task or issue.

## Instructions

1. First read `_memory/TOC.md` to understand the quick reference index
2. Based on the search query, identify potentially relevant documents from:
   - Quick Reference symptom matches
   - Chronological History for recent additions
3. Search document contents using Grep for specific terms
4. Read the most relevant documents fully
5. Return a summary of findings including:
   - Relevant document titles and links
   - Key solutions or patterns found
   - Code snippets if applicable
   - Related documents to check

## Search Strategy

- For error messages: Search for exact error text
- For features: Search for component names and related tags
- For patterns: Check the "Architectural Principles" section in TOC.md
- For recent work: Check the Chronological History section

## Output Format

```
## Memory Search Results

### Relevant Documents
- [Document Title](./path.md) - Brief relevance description

### Key Findings
- Finding 1
- Finding 2

### Recommended Actions
Based on memory, you should...

### Related Documents
- [Other Doc](./path.md) - May also be relevant
```

If no relevant documents found, state clearly and suggest creating one after the issue is resolved.
