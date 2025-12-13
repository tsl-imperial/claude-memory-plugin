#!/bin/bash

# Claude Memory Plugin - Installation Script
# Usage: bash install.sh /path/to/your/project

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Check if target directory is provided
if [ -z "$1" ]; then
    echo -e "${RED}Error: Please provide the target project directory${NC}"
    echo "Usage: bash install.sh /path/to/your/project"
    exit 1
fi

TARGET_DIR="$1"

# Check if target directory exists
if [ ! -d "$TARGET_DIR" ]; then
    echo -e "${RED}Error: Directory '$TARGET_DIR' does not exist${NC}"
    exit 1
fi

echo -e "${GREEN}Installing Claude Memory Plugin to: $TARGET_DIR${NC}"
echo ""

# Create _memory directory if it doesn't exist
if [ -d "$TARGET_DIR/_memory" ]; then
    echo -e "${YELLOW}Warning: _memory directory already exists. Skipping template copy.${NC}"
    echo "         If you want to reset, remove the _memory directory first."
else
    echo "Creating _memory directory..."
    cp -r "$SCRIPT_DIR/templates/_memory" "$TARGET_DIR/_memory"

    # Update the date in the setup document
    TODAY=$(date +%Y-%m-%d)
    if [[ "$OSTYPE" == "darwin"* ]]; then
        sed -i '' "s/YYYY-MM-DD/$TODAY/g" "$TARGET_DIR/_memory/memory_system_setup.md"
        sed -i '' "s/YYYY-MM-DD/$TODAY/g" "$TARGET_DIR/_memory/TOC.md"
    else
        sed -i "s/YYYY-MM-DD/$TODAY/g" "$TARGET_DIR/_memory/memory_system_setup.md"
        sed -i "s/YYYY-MM-DD/$TODAY/g" "$TARGET_DIR/_memory/TOC.md"
    fi

    echo -e "${GREEN}  ✓ Created _memory directory with templates${NC}"
fi

# Create .claude/commands directory and copy slash command
mkdir -p "$TARGET_DIR/.claude/commands"

if [ -f "$TARGET_DIR/.claude/commands/documentmemory.md" ]; then
    echo -e "${YELLOW}Warning: documentmemory.md already exists. Skipping.${NC}"
else
    cp "$SCRIPT_DIR/commands/documentmemory.md" "$TARGET_DIR/.claude/commands/"
    echo -e "${GREEN}  ✓ Installed /documentmemory slash command${NC}"
fi

echo ""
echo -e "${GREEN}Installation complete!${NC}"
echo ""
echo -e "${YELLOW}Next steps:${NC}"
echo ""
echo "1. Add the memory protocol to your CLAUDE.md file."
echo "   See: $SCRIPT_DIR/CLAUDE_SNIPPET.md"
echo ""
echo "2. Customize _memory/DOCS.md with your project's components and tags."
echo ""
echo "3. Start using /documentmemory after solving issues!"
echo ""
echo -e "${GREEN}Memory system is ready to use.${NC}"
