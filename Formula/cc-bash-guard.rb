class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.2.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.17/cc-bash-guard_v0.2.17_macos_arm64.tar.gz"
      sha256 "9237b1d5ab677d2b9fd5b960848d0e03db47feafa717a272da34051a4e12ad35"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.17/cc-bash-guard_v0.2.17_macos_x64.tar.gz"
      sha256 "bd5ca9a4603f5c25ca51c873a3b4336a646d20ca9a1eb2b5a2c857d3b48dcaff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.17/cc-bash-guard_v0.2.17_linux_arm64.tar.gz"
      sha256 "29c6c07b877909322cc55fcf7089c8262888023a5039524bf485d4dd5dae9fb6"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.17/cc-bash-guard_v0.2.17_linux_x64.tar.gz"
      sha256 "8ba88eb0b3e3045b769cbb3b011f85696cfff7c14e3f478ee828339a45c90fec"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
