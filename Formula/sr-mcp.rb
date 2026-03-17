class SrMcp < Formula
  desc "MCP server for Screen Recorder — lets AI agents control recording and screenshots"
  homepage "https://github.com/codeitlikemiley/screenrecorder"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/codeitlikemiley/screenrecorder/releases/download/v#{version}/sr-mcp"
      sha256 "9369ee4180173d0d18f1777080e428ad502e896b4137f92fde5cab10cf0cf5d4"
    end
    on_intel do
      url "https://github.com/codeitlikemiley/screenrecorder/releases/download/v#{version}/sr-mcp"
      sha256 "9369ee4180173d0d18f1777080e428ad502e896b4137f92fde5cab10cf0cf5d4"
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
