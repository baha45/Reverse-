#!/bin/bash
# Installs the REA CLI (rea-agents) in Claude Code cloud sessions so `rea` is on PATH.
# The MCP server itself is registered in .mcp.json and the skill lives in .claude/skills.
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

REA_VERSION="6.7.0"

if ! command -v rea >/dev/null 2>&1 || [ "$(rea --version 2>/dev/null | tr -d '[:space:]')" != "$REA_VERSION" ]; then
  npm install --global "rea-agents@${REA_VERSION}" --no-fund --no-audit >/dev/null
fi
