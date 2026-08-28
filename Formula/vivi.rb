class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.27"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.27/vivi_Darwin_arm64.tar.gz"
      sha256 "37110d8d70bd9cd7338b6d9b47d912d2c0b0e44e384c35a8ce82c756b66030e7"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.27/vivi_Darwin_x86_64.tar.gz"
      sha256 "863e87b88ba8483be1cd1d2e83036deb97d2c5b4b02a36639fb5e9dda458fba1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.27/vivi_Linux_arm64.tar.gz"
      sha256 "fa35a55bf946a7d477f2737ddeab85e44e9041bb03a10653326461eb49730846"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.27/vivi_Linux_x86_64.tar.gz"
      sha256 "5b97b544407bae9a2961594592712f44fc9b244d448309a07bc1338b42a87eef"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
