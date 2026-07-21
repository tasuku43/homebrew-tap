class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.17/vivi_Darwin_arm64.tar.gz"
      sha256 "89c2a75ca2f041d0b4b352cb9965c8c1bb29caa1564f077dab3f9fbd05f1cc4d"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.17/vivi_Darwin_x86_64.tar.gz"
      sha256 "36aeb60c08e77e382c7c2d95830de5e43d598197d14620d9f8af7b27911a4d8f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.17/vivi_Linux_arm64.tar.gz"
      sha256 "e078115782d0ec6897d3468b02e55b21ef06a86f7165f6f7d92e55d5b373c751"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.17/vivi_Linux_x86_64.tar.gz"
      sha256 "6539dd7b33532ef77559f81344759d349eeeaf42b5a1fa4e12b7808f284dbd3f"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
