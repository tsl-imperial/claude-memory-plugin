# Claude Memory Plugin

Institutional memory system for Claude Code. Captures and retrieves lessons learned, architectural decisions, and common issues.

Developed by the [Transport Systems & Logistics Laboratory](https://transport-systems.imperial.ac.uk) at Imperial College London.

## Installation

```bash
/plugin marketplace add tsl-imperial/tsl-claude-plugins
/plugin install memory-system@tsl-claude-plugins
```

Then initialize the memory system in your project:

```bash
/memory-init
```

## Components

| Component | Description |
|-----------|-------------|
| Hook | Reminds to check memory before every task |
| `/memory-init` | Initializes `_memory/` directory structure |
| `/documentmemory` | Creates new memory documents |
| `memory-search` agent | Searches memory for relevant solutions |

## How It Works

1. **Hook** fires on every message, reminding to check `_memory/TOC.md`
2. **Search** memory for existing solutions before investigating
3. **Document** new solutions with `/documentmemory` after solving issues

## CLAUDE.md Integration

The `/memory-init` command automatically adds a **Mandatory Memory Check Protocol** section to your project's `CLAUDE.md` file. This ensures Claude Code always checks memory before investigating issues or implementing features.

The protocol is customizable - adjust the language to match your project's domain (web apps, mobile apps, libraries, etc.).

## Multi-Directory Support

When working with multiple directories in a Claude Code session:

- **Check for memory in added directories**: External directories may have their own `_memory/` systems
- **Cross-reference**: Solutions from one project may apply to another
- **Respect boundaries**: Each project's memory is scoped to that project

## Plugin Structure

```
├── .claude-plugin/plugin.json
├── commands/
│   ├── memory-init.md
│   └── documentmemory.md
├── agents/
│   └── memory-search.md
└── hooks.json
```

## Marketplace

[TSL Claude Plugins](https://github.com/tsl-imperial/tsl-claude-plugins)
