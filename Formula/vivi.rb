class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.33"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.33/vivi_Darwin_arm64.tar.gz"
      sha256 "a6ed721add24c3ba35299671dc299f60f2e69a5f60662d93c2ffaf0722a1c682"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.33/vivi_Darwin_x86_64.tar.gz"
      sha256 "b1166b1255ab9da24c1af9a6cacbb06bbd2d00f2e3f22d28d303fa96ae6e99a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.33/vivi_Linux_arm64.tar.gz"
      sha256 "bd091097e98776a675d96301e66f2449276b55d5aa5d2a416e510faaf3f4bd13"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.33/vivi_Linux_x86_64.tar.gz"
      sha256 "25a319c7175cc429347b506e0d80d98074f8118c998eaf5f8a425a89ee0ca308"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
