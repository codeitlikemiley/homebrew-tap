cask "screenrecorder" do
  version "1.0.0"
  sha256 "f33dc8bf7b3573d6829d6a9cbafc86987d24911d4102926d1a9369d4098abfd7"

  url "https://github.com/codeitlikemiley/screenrecorder/releases/download/v#{version}/ScreenRecorder-#{version}.dmg"
  name "Screen Recorder"
  desc "AI-powered screen recording for developers with CLI and MCP support"
  homepage "https://github.com/codeitlikemiley/screenrecorder"

  depends_on macos: ">= :sonoma"

  app "ScreenRecorder.app"

  postflight do
    # Remove quarantine attribute so the app can launch without Gatekeeper prompts
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/ScreenRecorder.app"],
                   sudo: false

    # Create CLI symlinks from bundled binaries
    system_command "/bin/ln",
                   args: ["-sf", "#{appdir}/ScreenRecorder.app/Contents/MacOS/sr", "/usr/local/bin/sr"],
                   sudo: true
    system_command "/bin/ln",
                   args: ["-sf", "#{appdir}/ScreenRecorder.app/Contents/MacOS/sr-mcp", "/usr/local/bin/sr-mcp"],
                   sudo: true
  end

  uninstall_postflight do
    # Remove CLI symlinks
    system_command "/bin/rm",
                   args: ["-f", "/usr/local/bin/sr"],
                   sudo: true
    system_command "/bin/rm",
                   args: ["-f", "/usr/local/bin/sr-mcp"],
                   sudo: true
  end

  zap trash: [
    "~/Library/Application Support/ScreenRecorder",
    "~/Library/Preferences/com.codeitlikemiley.screenrecorder.plist",
    "~/Library/Preferences/com.codeitlikemiley.screenrecorder.shared.plist",
    "~/Library/Caches/com.codeitlikemiley.screenrecorder",
    "~/.screenrecorder",
  ]
end
