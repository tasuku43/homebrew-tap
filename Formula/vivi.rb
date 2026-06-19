class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.1.0/vivi_Darwin_arm64.tar.gz"
      sha256 "9754f1bbd8d532a70af8d1506c91aa8537d955bb3e48c3c3a0c95dac31788984"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.1.0/vivi_Darwin_x86_64.tar.gz"
      sha256 "d95e22052db097b588d347a8ac825abffb087de43c02361a0484efd79e9b2d7d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.1.0/vivi_Linux_arm64.tar.gz"
      sha256 "1fb9939dea0899576ba28faa43fcb981c05df7906b84f4b7a6c463694c9fde75"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.1.0/vivi_Linux_x86_64.tar.gz"
      sha256 "8b5454837afac2a834648a617ce570f5949927c4f9bd523ea41f15dd63f099b5"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end

