class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.39"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.39/vivi_Darwin_arm64.tar.gz"
      sha256 "c367b706c5131f0da66eb1382cb5ef1a75ba7e7ca35696e539b50fa6f029980b"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.39/vivi_Darwin_x86_64.tar.gz"
      sha256 "d91e9209e4186f50d93c50fc7cb39af07921551b4024e4f72018ae430b7b46e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.39/vivi_Linux_arm64.tar.gz"
      sha256 "dc396cbe531d06daee7272b7d36ee3d46f99774144a61f239e08411e080173d7"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.39/vivi_Linux_x86_64.tar.gz"
      sha256 "3be8126e9df2cd4f68e5e4528cbfcee0875036ff0ec8434e367c8ea27926dc07"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
