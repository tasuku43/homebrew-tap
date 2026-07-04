class Kra < Formula
  desc "Workspace orchestration CLI with state-first guardrails"
  homepage "https://github.com/tasuku43/kra"
  license "MIT"

  version "0.5.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.5.17/kra_v0.5.17_macos_arm64.tar.gz"
      sha256 "0c029e9eea5fdbd08de587247f689cee66ff0d19e4578ba7432be850f3c3441b"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.5.17/kra_v0.5.17_macos_x64.tar.gz"
      sha256 "ae6f85a0299b7689323ff0c481533710649de8db1fe190929d3517d210ff9e17"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.5.17/kra_v0.5.17_linux_arm64.tar.gz"
      sha256 "e27a655994d847703119ee184fda41b6364517cb0c7f4280ae5a2a137c911ae8"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.5.17/kra_v0.5.17_linux_x64.tar.gz"
      sha256 "8aeb9d126f7d3c175eb49e26fd966e529d8e0d5045aa438f03e1d6c0638e15a2"
    end
  end

  def install
    bin.install "kra"
  end

  test do
    system "#{bin}/kra", "version"
  end
end
