class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.6/vivi_Darwin_arm64.tar.gz"
      sha256 "44723fbfe384adc8389cd2fa15a814bb980eb573db22d20a897458d85125d569"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.6/vivi_Darwin_x86_64.tar.gz"
      sha256 "4a0a93053cbe0649616fa28ec39844a99457105f367aa21861d88dd177ecd9e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.6/vivi_Linux_arm64.tar.gz"
      sha256 "4be6ee542a594380d611b6dd05ba99983f82410af662324e61465ff4fcdfbb42"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.6/vivi_Linux_x86_64.tar.gz"
      sha256 "e3f19091580596b9eec66e0a857567e16717a1740ed7bf54b74c6e9a6b0b4f3c"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
