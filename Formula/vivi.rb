class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.5/vivi_Darwin_arm64.tar.gz"
      sha256 "606648ba0ddeac3348477b7a4ed4e9899e709b884febdfe94a952a44420bf807"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.5/vivi_Darwin_x86_64.tar.gz"
      sha256 "e76172ca017b919f1edb4327f4f158554cb7b69180d27fbced3c9f7ccdc3b8fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.5/vivi_Linux_arm64.tar.gz"
      sha256 "987942c1df11e1f32acfb0645c9f5870e47499e7ba8d4d3ca46c5f52c089c990"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.5/vivi_Linux_x86_64.tar.gz"
      sha256 "47ceb8cd5e2d2cd1f825f73a1f20b40d2f4e05459facc0f7e1c1602c6fb007e0"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
