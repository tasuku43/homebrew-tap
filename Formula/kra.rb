class Kra < Formula
  desc "Workspace orchestration CLI with state-first guardrails"
  homepage "https://github.com/tasuku43/kra"
  license "MIT"

  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.7.0/kra_v0.7.0_macos_arm64.tar.gz"
      sha256 "e6a7d52de6041b57cd6a4de5a6226474bd98fa2249bf160df90f1619229f26f3"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.7.0/kra_v0.7.0_macos_x64.tar.gz"
      sha256 "05d31beeb7555270d279c8d96e60ba669c484835d699a9c5a71cf6e2da66379d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.7.0/kra_v0.7.0_linux_arm64.tar.gz"
      sha256 "88081959550f260ecf704a8057084101b33b5a5f0f06b95c04bf6bdf7ab04d71"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.7.0/kra_v0.7.0_linux_x64.tar.gz"
      sha256 "c3fc7d1a703c897b7a3a91ae5b5c4b09a7da0acf4dcd0de88d83ced7452c7ab9"
    end
  end

  def install
    bin.install "kra"
  end

  test do
    system "#{bin}/kra", "version"
  end
end
