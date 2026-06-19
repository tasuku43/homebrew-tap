class Kra < Formula
  desc "Workspace orchestration CLI with state-first guardrails"
  homepage "https://github.com/tasuku43/kra"
  license "MIT"

  version "0.5.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.5.14/kra_v0.5.14_macos_arm64.tar.gz"
      sha256 "f176ac0badbe675db73fec9af3bbed3db5bb7705b4301ecee3b3056fcdc3f9d3"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.5.14/kra_v0.5.14_macos_x64.tar.gz"
      sha256 "753bf6e19beca5d18797666811278ac7be885ea1ea16d7c68eb798c307fcd09e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.5.14/kra_v0.5.14_linux_arm64.tar.gz"
      sha256 "80c906d80efc1fda488d6d2274d47d15bd47351fb5b56faaf67ddd16d2b396cf"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.5.14/kra_v0.5.14_linux_x64.tar.gz"
      sha256 "8676f224b9ff76ec71ccc9f455bd5543418b5888d84954ff24a46651c72b1a80"
    end
  end

  def install
    bin.install "kra"
  end

  test do
    system "#{bin}/kra", "version"
  end
end

