class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.2.18"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.18/cc-bash-guard_v0.2.18_macos_arm64.tar.gz"
      sha256 "0e08fd78e38300837d197d4373aee4ba233b333fd96deea54edfedb038b6c96b"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.18/cc-bash-guard_v0.2.18_macos_x64.tar.gz"
      sha256 "2c20063aed3859687d64cbdaddf50f6d7609ea6066bfb7bfe44cd66b20d7b6a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.18/cc-bash-guard_v0.2.18_linux_arm64.tar.gz"
      sha256 "a1a411e53db9973c2e7ab3f616222d7a3708134dafa923d418e85073fe444d1a"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.18/cc-bash-guard_v0.2.18_linux_x64.tar.gz"
      sha256 "0da13c1116f95d1bee523055a61ad3638d1931ec94fc93d0b7bfbf86185c5768"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
