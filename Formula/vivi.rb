class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.28"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.28/vivi_Darwin_arm64.tar.gz"
      sha256 "fade9154d39b06d42fd6789d41475a37083aef53a6d4c55ba61d8ed2a6e0f901"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.28/vivi_Darwin_x86_64.tar.gz"
      sha256 "16cdc1d5477023a932970204f49ec84e07723941a9aacd19790b44253338a87c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.28/vivi_Linux_arm64.tar.gz"
      sha256 "1f83443181559732dd049b67f8dafc47bcd64399f61d774bb08a2ad501fef13d"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.28/vivi_Linux_x86_64.tar.gz"
      sha256 "98a4eadf9381165bfdd994b5db248a94fe744f960ef25b16f596d6d612b69d04"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
