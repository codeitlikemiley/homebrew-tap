class Sr < Formula
  desc "CLI for Screen Recorder — control recording, screenshots, and annotations from the terminal"
  homepage "https://github.com/codeitlikemiley/screenrecorder"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/codeitlikemiley/screenrecorder/releases/download/v#{version}/sr"
      sha256 "43d5b0f907e42f1ae1b84e8aca0eb33dc2ef8daf573c41f921ca64558bb2b267"
    end
    on_intel do
      url "https://github.com/codeitlikemiley/screenrecorder/releases/download/v#{version}/sr"
      sha256 "43d5b0f907e42f1ae1b84e8aca0eb33dc2ef8daf573c41f921ca64558bb2b267"
    end
  end

  depends_on macos: ">= :sonoma"

  def install
    bin.install "sr"
  end

  test do
    assert_match "sr", shell_output("#{bin}/sr --help", 0)
  end
end
