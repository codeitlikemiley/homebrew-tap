# 🎬 Homebrew Tap — Screen Recorder

[![Update Tap](https://github.com/codeitlikemiley/homebrew-tap/actions/workflows/update-tap.yml/badge.svg)](https://github.com/codeitlikemiley/homebrew-tap/actions/workflows/update-tap.yml)

Homebrew formulae for [Screen Recorder](https://github.com/codeitlikemiley/screenrecorder) — AI-powered screen recording for developers.

## Install Everything

```bash
brew tap codeitlikemiley/tap
brew install --cask screenrecorder
brew install sr sr-mcp
```

## Available Packages

### 🖥️ Screen Recorder App

The full macOS app with UI, system tray, keyboard shortcuts, and annotation toolbar.

```bash
brew install --cask codeitlikemiley/tap/screenrecorder
```

> **Requires:** macOS 14 (Sonoma) or later · Apple Silicon & Intel

---

### 🔧 `sr` — Command Line Interface

Control Screen Recorder from the terminal. Start/stop recordings, take annotated screenshots, check status, and manage your recording library.

```bash
brew install codeitlikemiley/tap/sr
```

**Usage:**

```bash
sr record              # Start recording
sr record --annotate   # Start with annotation toolbar
sr screenshot          # Take a screenshot
sr status              # Check recording status
sr stop                # Stop recording
sr activate KEY        # Activate your license
```

---

### 🔌 `sr-mcp` — MCP Server

Model Context Protocol server that turns Screen Recorder into an AI tool. Works with Claude, Cursor, and any MCP-compatible agent.

```bash
brew install codeitlikemiley/tap/sr-mcp
```

**MCP Configuration** (`claude_desktop_config.json`):

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
brew upgrade sr sr-mcp
```

## Uninstall

```bash
brew uninstall --cask screenrecorder
brew uninstall sr sr-mcp
brew untap codeitlikemiley/tap
```

## Links

- 🏠 [Homepage & License Server](https://github.com/codeitlikemiley/screenrecorder)
- 📦 [Releases](https://github.com/codeitlikemiley/screenrecorder/releases)
- 🐛 [Issues](https://github.com/codeitlikemiley/screenrecorder/issues)
