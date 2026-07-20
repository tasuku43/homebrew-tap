class Cwk < Formula
  desc "Chatworkをタスク単位で操作するCLI。"
  homepage "https://github.com/tasuku43/cwk"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cwk/releases/download/v0.2.1/cwk_v0.2.1_darwin_arm64.tar.gz"
      sha256 "18769bd3dc757779d969800668bc468a7467667521ba1a48b3a460ad3b88cf05"
    else
      url "https://github.com/tasuku43/cwk/releases/download/v0.2.1/cwk_v0.2.1_darwin_amd64.tar.gz"
      sha256 "7c0ca89075d6616f6815fc3e764b6d33ac456db8d9f407296ae3c237c7287ee4"
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
