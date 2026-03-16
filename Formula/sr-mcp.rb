class SrMcp < Formula
  desc "MCP server for Screen Recorder — lets AI agents control recording and screenshots"
  homepage "https://github.com/codeitlikemiley/screenrecorder"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/codeitlikemiley/screenrecorder/releases/download/v#{version}/sr-mcp"
      sha256 "f71746b59e0e0af28803eaf30a680d94b7a384bc31c5b4acbc765a52e7cfac3e"
    end
    on_intel do
      url "https://github.com/codeitlikemiley/screenrecorder/releases/download/v#{version}/sr-mcp"
      sha256 "f71746b59e0e0af28803eaf30a680d94b7a384bc31c5b4acbc765a52e7cfac3e"
    end
  end

  depends_on macos: ">= :sonoma"

  def install
    bin.install "sr-mcp"
  end

  test do
    assert_match "sr-mcp", shell_output("#{bin}/sr-mcp --help", 0)
  end
end
