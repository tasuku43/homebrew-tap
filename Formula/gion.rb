class Gion < Formula
  desc "Inventory-driven Git workspaces with guardrails"
  homepage "https://github.com/tasuku43/gion"
  license "MIT"

  version "1.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v1.0.3/gion_v1.0.3_macos_arm64.tar.gz"
      sha256 "9dab6f690d3d698119b2a253b57ff65dfad98cd0cc9b7ea77f30cee47e5942e1"
    else
      url "https://github.com/tasuku43/gion/releases/download/v1.0.3/gion_v1.0.3_macos_x64.tar.gz"
      sha256 "f07f09f667a8fd9512b846d2ee1ed2144352f6fa8ace35130181b6f2a2a141fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v1.0.3/gion_v1.0.3_linux_arm64.tar.gz"
      sha256 "f822d9f3dedb1497f172bd74b20c6a0851769c7432f64962e848d73eac86ed85"
    else
      url "https://github.com/tasuku43/gion/releases/download/v1.0.3/gion_v1.0.3_linux_x64.tar.gz"
      sha256 "70c6fdce3757275e28ab2aaf0e47f3737f235d6f768fd597ba729d9be60f1e41"
    end
  end

  def install
    bin.install "gion", "giongo"
  end

  test do
    system "#{bin}/gion", "--version"
    system "#{bin}/giongo", "--version"
  end
end
