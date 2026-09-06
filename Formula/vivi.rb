class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.37"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.37/vivi_Darwin_arm64.tar.gz"
      sha256 "daeaa22c8939bd1dd575ae5060e7275c9557aff1434fb62c46c8dc217d14bda2"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.37/vivi_Darwin_x86_64.tar.gz"
      sha256 "0a87119effe59648ac275ec344d323f8e3eca0d11c8be82434a8147a8967aad7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.37/vivi_Linux_arm64.tar.gz"
      sha256 "8342c9977ebdbcaab5155697971e1188c63a73be15287180e7ff47590e7d812c"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.37/vivi_Linux_x86_64.tar.gz"
      sha256 "4e726ed97397504bf18ad3fdcf9e5ee752aca37f12961c98b207fcce34f595ce"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
