class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.8/vivi_Darwin_arm64.tar.gz"
      sha256 "e394f016da0afb5323cd2996c0ead1ee8c5f4bc1d7f1daf7534f1d8010f1f13c"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.8/vivi_Darwin_x86_64.tar.gz"
      sha256 "90cfb46922bdbdcf9628df8493d4a3402b87504e7f700fda9ab0b8e3693ffa79"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.8/vivi_Linux_arm64.tar.gz"
      sha256 "ed6d8ca4b322261e35902e0c6d9ad527d801679402680ada9ac472ba116fd20d"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.8/vivi_Linux_x86_64.tar.gz"
      sha256 "1ded6c5a094428ac7d6c4aa9417160bf6baa88d7b663ab322bfbdd7a3b29cdc1"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
