class Cwk < Formula
  desc "Chatworkをタスク単位で操作するCLI。"
  homepage "https://github.com/tasuku43/cwk"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cwk/releases/download/v0.2.0/cwk_v0.2.0_darwin_arm64.tar.gz"
      sha256 "0264d9793165efe3922b641fd7ac7f97fbfb26a87715b8bc2f18df2f54f002ea"
    else
      url "https://github.com/tasuku43/cwk/releases/download/v0.2.0/cwk_v0.2.0_darwin_amd64.tar.gz"
      sha256 "e290a39d01dfdf2c3ae0762ff6c67b585c101b7eabda61d383b4eec1a64ac1b2"
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
