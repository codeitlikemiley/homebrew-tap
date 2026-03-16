cask "screenrecorder" do
  version "1.0.0"
  sha256 "ef63d1865254737edab137f452402909980fe30245eba98797f61ca821a6bbf5"

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
  end

  zap trash: [
    "~/Library/Application Support/ScreenRecorder",
    "~/Library/Preferences/com.codeitlikemiley.screenrecorder.plist",
    "~/Library/Caches/com.codeitlikemiley.screenrecorder",
  ]
end
