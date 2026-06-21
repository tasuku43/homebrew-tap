class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.1/vivi_Darwin_arm64.tar.gz"
      sha256 "1e9267f2c3f8b6563d504961d3da977943c5544797abe7127632c9909d60b4ad"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.1/vivi_Darwin_x86_64.tar.gz"
      sha256 "925207e3de35fbff832992e0a876b8c029ac154d401dd4acb8f52ff86e153f0e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.1/vivi_Linux_arm64.tar.gz"
      sha256 "9ef268b3c0fa7d980f28b939cdc9c17d87f7ab679b99844fc69d30d8a60d81f0"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.1/vivi_Linux_x86_64.tar.gz"
      sha256 "d9e54432355d2ebbe70f8780bcdeb4c2c59cfe976ff7eef0526ff0922801cfc4"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
