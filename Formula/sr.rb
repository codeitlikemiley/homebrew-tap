class Sr < Formula
  desc "CLI for Screen Recorder — control recording, screenshots, and annotations from the terminal"
  homepage "https://github.com/codeitlikemiley/screenrecorder"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/codeitlikemiley/screenrecorder/releases/download/v#{version}/sr"
      sha256 "efc732abb4226d58338246d016706fb739092afffed8e154d1ee1cda52f7aeb9"
    end
    on_intel do
      url "https://github.com/codeitlikemiley/screenrecorder/releases/download/v#{version}/sr"
      sha256 "efc732abb4226d58338246d016706fb739092afffed8e154d1ee1cda52f7aeb9"
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
