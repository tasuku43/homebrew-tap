class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.20"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.20/vivi_Darwin_arm64.tar.gz"
      sha256 "309a15cdad0cbbce5b4e17dbbb3ee63af493287bbbb2e697a900e13dab394136"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.20/vivi_Darwin_x86_64.tar.gz"
      sha256 "37e5e0ce0d5a3f80de3f55d00cd55ba2eafd81cea54f9934a928fa504414e06c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.20/vivi_Linux_arm64.tar.gz"
      sha256 "163de53c3566ce8ea95b6f55928162e724c3bccc742b3ac2c15f343a9410c5f8"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.20/vivi_Linux_x86_64.tar.gz"
      sha256 "b11e1edfcb2fae86cb7bee513ca9e849b92a8d68db1d0716489c16be286ba5eb"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
