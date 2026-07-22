class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.19"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.19/vivi_Darwin_arm64.tar.gz"
      sha256 "ceeff6c76afcf0c949474513fe33fa1173a5f9a2b532865f6223b5f6b84f7f5e"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.19/vivi_Darwin_x86_64.tar.gz"
      sha256 "a6f37e12e63f9a8d8899eace3f4bc13d14e7fb80002691441c667f1c13b2492a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.19/vivi_Linux_arm64.tar.gz"
      sha256 "296fe7913c9523fef34f90fe4e9d1b9159b16e2de9954b70fa2a5fe1c45fa7d1"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.19/vivi_Linux_x86_64.tar.gz"
      sha256 "7fd6338720d05053fb952f4d1a4f2149113527313ac9ca570b708b4742440748"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
