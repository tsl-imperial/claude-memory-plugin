# Claude Memory Plugin

Institutional memory system for Claude Code. Captures and retrieves lessons learned, architectural decisions, and common issues.

Developed by the [Transport Systems & Logistics Laboratory](https://transport-systems.imperial.ac.uk) at Imperial College London.

## Installation

```bash
/plugin marketplace add tsl-imperial/tsl-claude-plugins
/plugin install memory-system@tsl-claude-plugins
```

## Post-Installation

1. Copy `templates/_memory/` to your project root
2. Add contents of `CLAUDE_SNIPPET.md` to your `CLAUDE.md`
3. Customize `_memory/DOCS.md` with your project's components

## Contents

```
├── .claude-plugin/plugin.json    # Plugin manifest
├── commands/documentmemory.md    # /documentmemory slash command
├── templates/_memory/
│   ├── TOC.md                    # Quick reference index
│   ├── DOCS.md                   # Documentation standards
│   └── memory_system_setup.md    # Initial setup document
├── CLAUDE_SNIPPET.md             # CLAUDE.md protocol snippet
└── install.sh                    # Manual installation script
```

## Usage

```bash
/documentmemory
```

Creates structured memory documents with YAML frontmatter and canonical sections for incidents, implementations, patterns, and decisions.
