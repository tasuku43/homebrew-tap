class Cwk < Formula
  desc "Chatworkをタスク単位で操作するCLI。"
  homepage "https://github.com/tasuku43/cwk"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cwk/releases/download/v0.2.4/cwk_v0.2.4_darwin_arm64.tar.gz"
      sha256 "6b0bcb85fd1661188c2e630d50f4639436f857b8a97ed7ca206c69d1dc621e1b"
    else
      url "https://github.com/tasuku43/cwk/releases/download/v0.2.4/cwk_v0.2.4_darwin_amd64.tar.gz"
      sha256 "72233d0ddfe05f06fbc2287686b8617e174a1b81ebb485386bfcf5f30bc4d24d"
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
