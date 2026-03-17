# 🎬 Homebrew Tap — Screen Recorder

[![Update Tap](https://github.com/codeitlikemiley/homebrew-tap/actions/workflows/update-tap.yml/badge.svg)](https://github.com/codeitlikemiley/homebrew-tap/actions/workflows/update-tap.yml)

Homebrew formulae for [Screen Recorder](https://github.com/codeitlikemiley/screenrecorder) — AI-powered screen recording for developers.

## Install

```bash
brew tap codeitlikemiley/tap
brew install --cask screenrecorder
```

That's it! This single command installs:

- 🖥️ **Screen Recorder** — the full macOS app with UI, system tray, and annotation toolbar
- 🔧 **`sr`** — CLI to control recording, screenshots, and annotations from the terminal
- 🔌 **`sr-mcp`** — MCP server that lets AI agents (Claude, Cursor, etc.) control Screen Recorder

> **Requires:** macOS 14 (Sonoma) or later · Apple Silicon & Intel

---

## Usage

### CLI (`sr`)

```bash
sr record              # Start recording
sr record --annotate   # Start with annotation toolbar
sr screenshot          # Take a screenshot
sr status              # Check recording status
sr stop                # Stop recording
sr activate KEY        # Activate your license
```

### MCP Server (`sr-mcp`)

Add to your MCP client config (e.g. `claude_desktop_config.json`):

```json
{
  "mcpServers": {
    "screenrecorder": {
      "command": "sr-mcp"
    }
  }
}
```

**Available tools:**

| Tool | Description |
|------|-------------|
| `sr.record` | Start/stop screen recording |
| `sr.screenshot` | Capture screenshot with annotations |
| `sr.annotate` | Draw, highlight, and annotate on screen |
| `sr.status` | Get current app state |
| `sr.export` | Export session data and AI prompts |

---

## Updating

The tap auto-updates via CI when a new version is [released](https://github.com/codeitlikemiley/screenrecorder/releases). To pull the latest:

```bash
brew update
brew upgrade --cask screenrecorder
```

## Uninstall

```bash
brew uninstall --cask screenrecorder
brew untap codeitlikemiley/tap
```

## Links

- 🏠 [Homepage & License Server](https://github.com/codeitlikemiley/screenrecorder)
- 📦 [Releases](https://github.com/codeitlikemiley/screenrecorder/releases)
- 🐛 [Issues](https://github.com/codeitlikemiley/screenrecorder/issues)
