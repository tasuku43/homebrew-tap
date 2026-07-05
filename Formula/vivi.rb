class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.15/vivi_Darwin_arm64.tar.gz"
      sha256 "dec8b0d1aa6d5ceba166bb05b604a877010350c53d8a12541a8586e84f8172b4"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.15/vivi_Darwin_x86_64.tar.gz"
      sha256 "f363948ff3d884b6d0dea7b8507433805f8177e8e149180bd6fd367ef5ac3a0a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.15/vivi_Linux_arm64.tar.gz"
      sha256 "fcea4f7ec9350c440d39fa3fe751411312411c50bc83ca5f43958ea02860db2c"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.15/vivi_Linux_x86_64.tar.gz"
      sha256 "1b147cd08f71a9130a93dfb7572acebe918e7b4006a1df44b127126c0d4f678b"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
