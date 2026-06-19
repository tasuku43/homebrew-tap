class Gion < Formula
  desc "Inventory-driven Git workspaces with guardrails"
  homepage "https://github.com/tasuku43/gion"
  license "MIT"

  version "1.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v1.0.2/gion_v1.0.2_macos_arm64.tar.gz"
      sha256 "d085d5f42afdd3a1c145f02d89723c567b993897ec094b2975cd2a5a34d56ea3"
    else
      url "https://github.com/tasuku43/gion/releases/download/v1.0.2/gion_v1.0.2_macos_x64.tar.gz"
      sha256 "7387c1b419e6b850ac2e4b9244404fdeb981e4bba8aadd9618e31d7f27f04f83"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v1.0.2/gion_v1.0.2_linux_arm64.tar.gz"
      sha256 "9bfac5b0a8a2b741e12531cd889a4c586ab31e41521f2f4a1084f385b12fea1c"
    else
      url "https://github.com/tasuku43/gion/releases/download/v1.0.2/gion_v1.0.2_linux_x64.tar.gz"
      sha256 "c33ce907a027e13efcd2c5dd54887f91cbcf852cbda76961c5c269d5a1bd7e41"
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

