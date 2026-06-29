class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.10/vivi_Darwin_arm64.tar.gz"
      sha256 "106ebbd34ac7038a2a9bc60ba0b2b01bea68e13dd22a55781efb3a19d5237999"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.10/vivi_Darwin_x86_64.tar.gz"
      sha256 "0492279fa4a17056e2672f59adca17d00c2918234b01df13f2d36cf3554c5a1d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.10/vivi_Linux_arm64.tar.gz"
      sha256 "7d5421e349fa7c5aa07b95514613d2960f4b75db808ba01db8640f63dfa52919"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.10/vivi_Linux_x86_64.tar.gz"
      sha256 "3d84b2d540e6c7e2fafa66c18dd319485dffc0edf3c6aba198f0fed34068c343"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
