class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.25"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.25/vivi_Darwin_arm64.tar.gz"
      sha256 "7f9c5109eaa586e86862f7f55e0d98f9b39fa60891e0dce32db4fcb0f3f2f34a"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.25/vivi_Darwin_x86_64.tar.gz"
      sha256 "3b2afbb597fe537404627d8820e09c0fc1017dc8e28893273512f2a982bb7136"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.25/vivi_Linux_arm64.tar.gz"
      sha256 "7bb215c1778c5705f0b730348d8ce93f21ca08050d08fe1b5bdd85f31c9b5a1d"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.25/vivi_Linux_x86_64.tar.gz"
      sha256 "b46363b16702d243aca7c3bd9288f3497b3dc9dc9c73979b971648ce71331ddc"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
