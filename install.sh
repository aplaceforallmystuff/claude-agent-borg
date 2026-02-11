#!/bin/bash

# Borg Agent Installer
# Installs the @borg agent for Claude Code

set -e

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

AGENT_NAME="borg"
INSTALL_DIR="$HOME/.claude/agents"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo ""
echo "Borg Agent Installer"
echo "===================="
echo ""

# Check for existing installation
if [ -f "$INSTALL_DIR/$AGENT_NAME.md" ] && [ "$1" != "--force" ]; then
    echo -e "${YELLOW}Warning:${NC} $AGENT_NAME is already installed at $INSTALL_DIR/$AGENT_NAME.md"
    echo "Use --force to reinstall"
    exit 1
fi

# Create agents directory if needed
mkdir -p "$INSTALL_DIR"

# Copy agent file
echo "Installing $AGENT_NAME..."
cp "$SCRIPT_DIR/agents/$AGENT_NAME.md" "$INSTALL_DIR/$AGENT_NAME.md"

# Verify installation
if [ -f "$INSTALL_DIR/$AGENT_NAME.md" ]; then
    echo ""
    echo -e "${GREEN}Success!${NC} Borg agent installed to $INSTALL_DIR/$AGENT_NAME.md"
    echo ""
    echo "Usage:"
    echo "  @borg assimilate ~/path/to/external-claude-setup"
    echo ""
else
    echo -e "${RED}Error:${NC} Installation failed - $AGENT_NAME.md not found"
    exit 1
fi
