class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.30"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.30/vivi_Darwin_arm64.tar.gz"
      sha256 "89473025a12bd8955e2be24cc22b9b184202c4b67ef60e2fa9ebf6ccc018b3cc"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.30/vivi_Darwin_x86_64.tar.gz"
      sha256 "ee9096e9ab208c1d87edab2ab327b15950bbf63259531f7f40761b0a741c93bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.30/vivi_Linux_arm64.tar.gz"
      sha256 "4525607d5df0464ff56f01cdccf7843d3dab88aef76d98a248c3d29eee1a3235"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.30/vivi_Linux_x86_64.tar.gz"
      sha256 "94cde1ceea5af149898cec0f24db5c0e8411c8866bab9f2e6020fd6ac7ce0345"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
