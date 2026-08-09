class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.22"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.22/vivi_Darwin_arm64.tar.gz"
      sha256 "dcb7e647c22f07ff2d96866932b590708cb1782b2cf3220e863dfb1caf294f50"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.22/vivi_Darwin_x86_64.tar.gz"
      sha256 "284a2b54efb20ee633a6c80b0ebfe6845b53070f1ef37f7df7ffeb356092203b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.22/vivi_Linux_arm64.tar.gz"
      sha256 "cea6575d402d3c901da61ae514b7643d49c6e456a2412d5a7fd38e35eb7acad3"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.22/vivi_Linux_x86_64.tar.gz"
      sha256 "fe30a11613e25be0fe68ef90d8b5fa0fbfd207bacea0da92bb86647c52c046d8"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
