class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.1.1/vivi_Darwin_arm64.tar.gz"
      sha256 "c917b4701af7324b7c8ea67a81f73580035fa9e26d4c4e9641f534776dd77135"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.1.1/vivi_Darwin_x86_64.tar.gz"
      sha256 "3886369ffd7bb48fa944bc4aa2c90c24dbb6abd3651aa5b8b08173435f8f107d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.1.1/vivi_Linux_arm64.tar.gz"
      sha256 "0cb86480a9b486aa683b4d7bb828629223100a2314a417e00cdf607bc9f3abd4"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.1.1/vivi_Linux_x86_64.tar.gz"
      sha256 "c6b38269ebd1d24ce1e53c6dd6a507e8bfcbd300080bcce73a5757bc3ddf8172"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
