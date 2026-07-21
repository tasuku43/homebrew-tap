class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.16/vivi_Darwin_arm64.tar.gz"
      sha256 "1019b3f1a697829c3293f1a7a74e3ae3e3c6d4bf0925be9f06bb486b73945c64"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.16/vivi_Darwin_x86_64.tar.gz"
      sha256 "f073f64f8b5ff526bdbfae2cfff7228af514a1b5e420ee480d487c0efb649a54"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.16/vivi_Linux_arm64.tar.gz"
      sha256 "54696ba0ec41ac8566218f8e1cf2d970b882ba55a277e9a7db6299ba0874e891"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.16/vivi_Linux_x86_64.tar.gz"
      sha256 "5604e371b319600377dcb4d1183cc89e72a012e5df889dab1643c81dfd390a02"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
