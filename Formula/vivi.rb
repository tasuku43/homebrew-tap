class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.23"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.23/vivi_Darwin_arm64.tar.gz"
      sha256 "16a6f26095574d0042c9c8c5ca7f7fe830e8119f0dff803d2f3dc569583e0c79"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.23/vivi_Darwin_x86_64.tar.gz"
      sha256 "c7156f0bf472d288ac622bef2bd74a363bdd49f753def4a246f477aed4b2132e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.23/vivi_Linux_arm64.tar.gz"
      sha256 "d231312238a1f32129568651e10afaaeca9186ee5073966b8297c8f0f42204b2"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.23/vivi_Linux_x86_64.tar.gz"
      sha256 "3f919304920e0ca8ba8a830987e68baaf62b627252ed680a85b00922aa461195"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
