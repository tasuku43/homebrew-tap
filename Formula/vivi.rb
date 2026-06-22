class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.2/vivi_Darwin_arm64.tar.gz"
      sha256 "474179662844f0ad8f5f529d27c69d3348ecee0a685c9df1bc8ed07efe3cbb15"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.2/vivi_Darwin_x86_64.tar.gz"
      sha256 "8ae7de23d3471f70291d9af6c6d2a7379082d4d1def8b9f6b2807bc400302e6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.2/vivi_Linux_arm64.tar.gz"
      sha256 "36ccbb2971fc4317e034cd25e75cb722f9a1cea26a26dc566a52952209454ae1"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.2/vivi_Linux_x86_64.tar.gz"
      sha256 "e3d04f94b43ea25966ccc58f9fa9918bb04f74807eb582c41c26ef05fd0d351b"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
