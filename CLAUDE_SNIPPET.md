# CLAUDE.md Memory Protocol Snippet

Add this section to the **TOP** of your project's `CLAUDE.md` file to enable the memory-first protocol.

---

## Snippet to Add

```markdown
## 🚨 MANDATORY MEMORY CHECK PROTOCOL 🚨

**⚠️ STOP: BEFORE ANY TROUBLESHOOTING ERRORS OR IMPLEMENTING NEW FEATURES - CHECK MEMORY FIRST ⚠️**

**STEP 1: ALWAYS READ `_memory/TOC.md` FIRST**
- Before investigating ANY issue
- Before implementing ANY feature
- Before making ANY architectural decisions
- Before suggesting ANY solutions

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

## ❌ COMMON MEMORY VIOLATION EXAMPLES ❌

**DON'T DO THESE** (violations we've seen repeatedly):
- ❌ [Add your project-specific anti-patterns here]

**CRITICAL**: The memory system contains solutions to dozens of issues. Ignoring it wastes hours and repeats mistakes.

### Golden Rules

1. **🚨 MEMORY FIRST - NO EXCEPTIONS**: The memory check protocol above is MANDATORY. Any work that doesn't start with memory consultation violates this rule and wastes development time.
2. [Your other golden rules here...]
7. **Document Lessons Learned**: After solving significant issues OR completing major implementations, add them to `_memory/` with proper documentation. See `_memory/DOCS.md` for standardized format requirements. Always update the Chronological History section in `_memory/TOC.md` when adding new memory documents.
```

---

## Customization

### Add Project-Specific Anti-Patterns

Replace `[Add your project-specific anti-patterns here]` with actual issues you want to prevent:

```markdown
**DON'T DO THESE** (violations we've seen repeatedly):
- ❌ Hardcoding configuration values instead of using the config system
- ❌ Implementing authentication logic without checking auth patterns
- ❌ Adding API endpoints without reviewing API design memory
```

### Add Your Golden Rules

The memory system integrates with your existing golden rules. Common additions:

```markdown
2. **Respect the Core Architecture**: Don't reimplement existing features
3. **Do not Monkeypatch**: Never suggest hardcoded workarounds
4. **Consider Generalization**: If something is reusable, consult the user
5. **Obtain Confirmation Before Core Changes**: Present a plan first
```

---

## Placement

The memory protocol should be placed **AFTER** your project overview and **BEFORE** other instructions:

```markdown
# CLAUDE.md

## Overview
[Your project description here]

## 🚨 MANDATORY MEMORY CHECK PROTOCOL 🚨
[Memory protocol snippet here]

## Other Sections
[Rest of your CLAUDE.md]
```
