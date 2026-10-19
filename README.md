# Reverse-

Workspace for reverse engineering with [REA](https://github.com/morluto/rea) (`rea-agents` 6.7.0).

- `.mcp.json` registers the REA MCP server (`npx -y rea-agents@6.7.0 mcp`) for Claude Code.
- `.claude/skills/reverse-engineer-anything` is REA's bundled workflow skill.
- `.claude/hooks/session-start.sh` installs the `rea` CLI in Claude Code cloud sessions.

Check readiness with `rea doctor`. Native-binary decompilation needs Hopper, Ghidra 12.1.x
(set `GHIDRA_INSTALL_DIR`) or IDA; JavaScript/Electron, .NET, WASM, Go/Rust and static APK
analysis work without them.
