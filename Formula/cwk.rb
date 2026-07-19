class Cwk < Formula
  desc "Chatworkをタスク単位で操作するCLI。"
  homepage "https://github.com/tasuku43/cwk"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cwk/releases/download/v0.1.1/cwk_v0.1.1_darwin_arm64.tar.gz"
      sha256 "27732e982660c79748ba1fcf026f4fa50518c12fe081a902bfee3840a3fa8816"
    else
      url "https://github.com/tasuku43/cwk/releases/download/v0.1.1/cwk_v0.1.1_darwin_amd64.tar.gz"
      sha256 "abdb030dd4ca8880195f0e5a9605c3d1ba9b75a5e77c3c4373ed7b825e76f5ba"
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
