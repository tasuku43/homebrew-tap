class Cwk < Formula
  desc "Chatworkをタスク単位で操作するCLI。"
  homepage "https://github.com/tasuku43/cwk"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cwk/releases/download/v0.2.3/cwk_v0.2.3_darwin_arm64.tar.gz"
      sha256 "657a05bb7d8f85c5d3df1e052de55619e2e47a41be87129561ba0ca069319164"
    else
      url "https://github.com/tasuku43/cwk/releases/download/v0.2.3/cwk_v0.2.3_darwin_amd64.tar.gz"
      sha256 "2e3d82ed866fc8202360d38d2ce4d340def486e2611d633cf3da486430e7055e"
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
