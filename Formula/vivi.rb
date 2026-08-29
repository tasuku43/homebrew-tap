class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.32"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.32/vivi_Darwin_arm64.tar.gz"
      sha256 "74842efb2f66019f430dc07fd3d324a62570fa7b4057c01ce22b118f73081a31"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.32/vivi_Darwin_x86_64.tar.gz"
      sha256 "32ee1806e703424498a63b4f18ff8a3df27da216477ef45c2743d05ab26b5500"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.32/vivi_Linux_arm64.tar.gz"
      sha256 "860a55b84d0fd8375a78d14a5edc005fe04445f2878923b8dc0e33df42472286"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.32/vivi_Linux_x86_64.tar.gz"
      sha256 "303dc8e2c8d3b837c9f1ca361b7616f9a9dfa202c2def2f22344da25634cb7a3"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
