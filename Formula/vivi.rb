class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.26"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.26/vivi_Darwin_arm64.tar.gz"
      sha256 "eb01b56849d08d33d2843033cfcf71f671670d3599e00e8290cefee5e6df1841"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.26/vivi_Darwin_x86_64.tar.gz"
      sha256 "7691992ad7c2904b5a343e30247eca69aaa8d79c4c354aa01f18d74d7428787f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.26/vivi_Linux_arm64.tar.gz"
      sha256 "2d8ba4fd6100b379ee59612f601f8aa0d15d96512a2774ca279f0e648d4437bf"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.26/vivi_Linux_x86_64.tar.gz"
      sha256 "6d23e6cfe874256f3c0ddac69141b1bc78677555a04ef2f1f06ee775d00d3144"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
