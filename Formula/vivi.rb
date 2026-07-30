class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.21"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.21/vivi_Darwin_arm64.tar.gz"
      sha256 "ff6e7480ac769c3fd65c58844ec229a16e304024ad147db54946e653a5eb5312"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.21/vivi_Darwin_x86_64.tar.gz"
      sha256 "b2d92c8c1bd81d33792933f7fa56398c90ff88b81b50f3f5c12b3c5e644b00ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.21/vivi_Linux_arm64.tar.gz"
      sha256 "508a5b16f1b2abdafcdbaa9d664be4c6109866b7f4bed0ff5f7f23f555b2a44c"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.21/vivi_Linux_x86_64.tar.gz"
      sha256 "68e725c271c590c0b0f359cce33deb2b406b97726422f04e4a135e2784320a99"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
