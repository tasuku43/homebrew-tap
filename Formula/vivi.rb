class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.35"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.35/vivi_Darwin_arm64.tar.gz"
      sha256 "a0047a8e39a88ba84289fcd728cbb44676b745a11bfb13d792df1ee151a678a2"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.35/vivi_Darwin_x86_64.tar.gz"
      sha256 "bbb84ab541bbd3ea36faf96c676de6594716dd8b13fb2b11286edb1c8a9078f9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.35/vivi_Linux_arm64.tar.gz"
      sha256 "aa91cb89cf45b2628e49f8e8a5fe956a78dbdc15d3798fe51de4c633ca3d0c91"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.35/vivi_Linux_x86_64.tar.gz"
      sha256 "8614c5e3d52a54541e1b4cd994651d0353a5326b914fea15f87075076adecf4f"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
