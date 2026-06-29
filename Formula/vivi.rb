class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.11/vivi_Darwin_arm64.tar.gz"
      sha256 "f0153111c60a955f3f2100af1d30da76e71505c39c3557f08971250846da630c"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.11/vivi_Darwin_x86_64.tar.gz"
      sha256 "59307c92d2e65c2cdace5245667c82e340f9f7d168ad77b4f3308c877fbd5d90"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.11/vivi_Linux_arm64.tar.gz"
      sha256 "0cc0fbc861f44d9f34b51d7683e4e6f6ce22f1f5f2f716fe0d14a2be7353448f"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.11/vivi_Linux_x86_64.tar.gz"
      sha256 "d7a706bfa460a08cd88998aef2f68ab564ac1cb9f393aff9c936050067cbdd83"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
