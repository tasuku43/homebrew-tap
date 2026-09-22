class Kra < Formula
  desc "Workspace orchestration CLI with state-first guardrails"
  homepage "https://github.com/tasuku43/kra"
  license "MIT"

  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.6.0/kra_v0.6.0_macos_arm64.tar.gz"
      sha256 "a8bd3197edf561a64ee3d63d44a19b4760a2de9851863ba1e6f88d5d6630b5db"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.6.0/kra_v0.6.0_macos_x64.tar.gz"
      sha256 "2f0f6e9aca2f8395f53441c5dbdf1e6a45ccf84243229056ee1f913dfd1aabb8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.6.0/kra_v0.6.0_linux_arm64.tar.gz"
      sha256 "b368f5874c7141936a05bd8a95ae8954a18a35fcaf9815b0d00fea4bae356342"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.6.0/kra_v0.6.0_linux_x64.tar.gz"
      sha256 "b633150181af9dc2525fc35f9cc384b620b85555ac4b717aad18e58a96a2fa40"
    end
  end

  def install
    bin.install "kra"
  end

  test do
    system "#{bin}/kra", "version"
  end
end
