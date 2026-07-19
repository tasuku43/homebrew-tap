class Cwk < Formula
  desc "Chatworkをタスク単位で操作するCLI。"
  homepage "https://github.com/tasuku43/cwk"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cwk/releases/download/v0.1.0/cwk_v0.1.0_darwin_arm64.tar.gz"
      sha256 "0db9e1d8ba7d777d644219844a7dc85c249d164e791681b2f940ca4a3e619fc3"
    else
      url "https://github.com/tasuku43/cwk/releases/download/v0.1.0/cwk_v0.1.0_darwin_amd64.tar.gz"
      sha256 "a7e0f6e0ad43eb95e130699bcea712567aa089e0faaf44e53a5fdf8d2ea5b473"
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
