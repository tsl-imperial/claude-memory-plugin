# Claude Memory Plugin

An institutional memory system for Claude Code that captures and retrieves lessons learned, architectural decisions, implementation records, and common issues.

## Overview

The Claude Memory Plugin provides a structured knowledge management approach that:

- **Prevents repeated problem-solving** - Issues are documented once, solved forever
- **Accelerates onboarding** - New team members access organized knowledge
- **Enables AI assistance** - Structured format allows Claude to retrieve relevant context
- **Preserves architectural decisions** - Critical design choices are documented with rationale
- **Reduces investigation time** - Quick reference guides point to solutions immediately

## Features

- **Memory Check Protocol** - Mandatory workflow ensuring memory consultation before any work
- **Structured Documents** - YAML frontmatter and canonical sections for machine-readable knowledge
- **Quick Reference Index** - Searchable table of contents for rapid discovery
- **Document Templates** - Standardized formats for incidents, implementations, patterns, and decisions
- **Slash Command** - `/documentmemory` command for guided document creation

## Installation

### Option 1: Via Claude Code Plugin Marketplace (Recommended)

```bash
# Add the TSL marketplace
/plugin marketplace add tsl/tsl-claude-plugins

# Install the memory plugin
/plugin install memory-system@tsl-claude-plugins
```

Or configure in your project's `.claude/settings.json`:

```json
{
  "extraKnownMarketplaces": {
    "tsl-claude-plugins": {
      "source": {
        "source": "github",
        "repo": "tsl/tsl-claude-plugins"
      }
    }
  },
  "enabledPlugins": {
    "memory-system@tsl-claude-plugins": true
  }
}
```

### Option 2: Direct GitHub Install

```bash
/plugin marketplace add tsl/claude-memory-plugin
/plugin install memory-system@claude-memory-plugin
```

### Option 3: Manual Installation

```bash
# Clone the plugin
git clone https://github.com/tsl/claude-memory-plugin.git
cd claude-memory-plugin

# Install to your project
bash install.sh /path/to/your/project
```

## Post-Installation Setup

After installing the plugin, you need to:

### 1. Copy Memory Templates to Your Project

```bash
# From the plugin directory or download:
cp -r templates/_memory /path/to/your/project/
```

### 2. Add Memory Protocol to CLAUDE.md

Add the snippet from `CLAUDE_SNIPPET.md` to the **top** of your project's `CLAUDE.md` file. This enforces the memory-first protocol.

### 3. Customize for Your Project

Edit `_memory/DOCS.md` to set your project's component taxonomy and tags.

## Directory Structure After Setup

```
your-project/
├── _memory/                              # Knowledge base
│   ├── TOC.md                           # Quick Reference (INDEX - SEARCH HERE FIRST)
│   ├── DOCS.md                          # Documentation standards
│   └── *.md                             # Individual memory documents
├── .claude/
│   └── settings.json                    # Plugin configuration
└── CLAUDE.md                            # Memory protocol enforcement
```

## Usage

### Before Starting Any Work

1. Read `_memory/TOC.md` Quick Reference
2. Search for relevant patterns in the index
3. Read the memory document for detailed solutions
4. Follow documented approaches

### After Solving Issues or Completing Work

```bash
# In Claude Code, run:
/documentmemory
```

This guides you through creating:
- Problem description with symptoms
- Root cause analysis
- Step-by-step solution
- Prevention tips

### Document Types

| Type | Use For | Key Sections |
|------|---------|--------------|
| **incident** | Bugs, configuration issues, problems | Problem, Symptoms, Root Cause, Fix, Prevention |
| **implementation** | Features, architectural changes, new systems | Overview, Architecture, Implementation, Lessons Learned |
| **pattern** | Best practices, design patterns, guidelines | Context, Pattern Description, Examples, Anti-patterns |
| **decision** | Architectural decisions, technology choices | Context, Decision, Consequences, Alternatives |

## Memory Document Format

Every memory document has YAML frontmatter:

```yaml
---
id: filename_without_extension
title: Human Readable Title
type: implementation | incident | pattern | decision
date: YYYY-MM-DD
status: done | active | deprecated
components: [frontend, backend, etc.]
tags: [architecture, bug-fix, etc.]
summary: >
  Brief description for quick context
---
```

## Customization

### Adapt Component Taxonomy

Edit `_memory/DOCS.md` to replace default components with your project's architecture:

```yaml
components:
- frontend
- backend
- api
- database
- [your components here]
```

### Add Project-Specific Anti-Patterns

In your CLAUDE.md, customize the violation examples:

```markdown
## Common Memory Violation Examples

**DON'T DO THESE**:
- Using deprecated API endpoints without checking memory
- Implementing auth logic without reviewing auth patterns
- [Your project-specific anti-patterns]
```

## What Gets Documented

### Document These
- Issues taking > 30 minutes to diagnose
- Configuration problems with unclear errors
- Non-obvious solutions or workarounds
- New features or architectural changes
- Important design decisions
- Patterns that should be reused

### Don't Document These
- Trivial typo fixes
- Obvious solutions (restart server, etc.)
- One-line code changes with clear cause
- Temporary debugging experiments

## Success Metrics

**After 1 month:**
- 5-10 memory documents created
- Issues resolved by checking memory first
- Reduced time debugging repeat problems

**After 3 months:**
- 20+ memory documents
- New team members onboarding faster
- Architectural patterns documented and followed

## Plugin Contents

```
claude-memory-plugin/
├── .claude-plugin/
│   └── plugin.json              # Plugin manifest
├── commands/
│   └── documentmemory.md        # Slash command
├── templates/
│   └── _memory/
│       ├── TOC.md               # Table of contents template
│       ├── DOCS.md              # Documentation standards
│       └── memory_system_setup.md  # Initial setup document
├── CLAUDE_SNIPPET.md            # CLAUDE.md integration snippet
├── install.sh                   # Manual installation script
└── README.md                    # This file
```

## License

MIT License

## Contributing

1. Fork this repository
2. Make your changes
3. Submit a pull request

## Related

- [TSL Claude Plugins](https://github.com/tsl/tsl-claude-plugins) - Plugin marketplace
