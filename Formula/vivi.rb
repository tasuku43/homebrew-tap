class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.41"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.41/vivi_Darwin_arm64.tar.gz"
      sha256 "2fa8499dac2cb44856c608b6311216a5e609935bfe6a8f80dac686b7523d0812"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.41/vivi_Darwin_x86_64.tar.gz"
      sha256 "9e77dde85c081f438eecfe37f25454430a96c9ce55541c6acc4f99388aae715c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.41/vivi_Linux_arm64.tar.gz"
      sha256 "10e31bcf9cab6cb4f7946464f428daabdd197a4d262936a77acd7cc2d5ad5d50"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.41/vivi_Linux_x86_64.tar.gz"
      sha256 "14d728d455803f486e94c2feab6a8d38c39bc4c1b94c8b3c9656e420acfadbb9"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
