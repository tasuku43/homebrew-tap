class Cwk < Formula
  desc "Chatworkをタスク単位で操作するCLI。"
  homepage "https://github.com/tasuku43/cwk"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cwk/releases/download/v0.2.2/cwk_v0.2.2_darwin_arm64.tar.gz"
      sha256 "28ccf468923cb92a48e447b2009723eec77148b2494220b0e184c03d2f6eed62"
    else
      url "https://github.com/tasuku43/cwk/releases/download/v0.2.2/cwk_v0.2.2_darwin_amd64.tar.gz"
      sha256 "b5b52d7240cfbc9cab04c993b745f828e4a76a52a0b782f04cf2cbb4d5f60dd0"
    end
  end

  def install
    bin.install "cwk"
    doc.install "LICENSE", "THIRD_PARTY_NOTICES"
  end

  test do
    assert_match "cwk #{version}", shell_output("#{bin}/cwk version")
  end
end
