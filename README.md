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
# Recording
sr record start --camera --mic   # Start recording with camera + mic
sr record stop                   # Stop and save
sr screenshot                    # Take a screenshot

# Annotations
sr annotate add --type arrow --points 100,100,300,200 --color red
sr annotate clear

# Computer Control (requires Accessibility permission)
sr input click 500 300           # Click at coordinates
sr input type "hello world"      # Type text
sr input hotkey cmd+c            # Keyboard shortcut
sr app launch Safari             # Launch app
sr shell "echo hello"            # Run shell command

# Status & License
sr status                        # Check recording status
sr activate KEY                  # Activate your license
```

### MCP Server (`sr-mcp`)

Add to your MCP client config (e.g. `~/.claude.json`):

```json
{
  "mcpServers": {
    "screen-recorder": {
      "command": "/usr/local/bin/sr-mcp",
      "args": ["serve"]
    }
  }
}
```

**24 tools** for AI agents — recording, screenshots, annotations, computer control, accessibility tree, and safety:

| Category | Tools |
|----------|-------|
| **Status & Screen** | `screen_recorder_status`, `screen_recorder_screen_info`, `screen_recorder_list_windows`, `screen_recorder_focused_window` |
| **Recording** | `screen_recorder_start`, `screen_recorder_stop`, `screen_recorder_pause`, `screen_recorder_resume` |
| **Screenshots** | `screen_recorder_screenshot` |
| **Annotations** | `screen_recorder_annotate`, `screen_recorder_annotate_*` (activate, deactivate, list, undo, redo, clear) |
| **Computer Control** | `screen_recorder_click`, `screen_recorder_type_text`, `screen_recorder_hotkey`, `screen_recorder_drag`, `screen_recorder_scroll`, and more |
| **Accessibility** | `screen_recorder_ax_tree`, `screen_recorder_ax_find`, `screen_recorder_ax_press`, `screen_recorder_ax_set_value` |
| **Safety** | `screen_recorder_safety_settings`, `screen_recorder_safety_configure`, `screen_recorder_safety_log` |

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
