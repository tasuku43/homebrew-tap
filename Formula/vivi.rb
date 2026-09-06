class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.38"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.38/vivi_Darwin_arm64.tar.gz"
      sha256 "fcaedb8fb5bde106ea6074cb71f6c971a35df8b0bfaac9691528fcc51e721c44"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.38/vivi_Darwin_x86_64.tar.gz"
      sha256 "b27e6dcf258b53adfb099190c9119b6c0a3b3a9220867bc7bbf5fa7382cf1d32"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.38/vivi_Linux_arm64.tar.gz"
      sha256 "2e9107017fd2d9acb89912016bd04bf9bd7c7f3f2b3dfab9ccd9e892ad69eaaa"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.38/vivi_Linux_x86_64.tar.gz"
      sha256 "692075bdd6914b5dc05e21a6a7f055a408e7383b61e73736359e7cea4bdaa223"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
