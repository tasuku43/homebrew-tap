class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.2.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.16/cc-bash-guard_v0.2.16_macos_arm64.tar.gz"
      sha256 "edf63a251426f1b123f971feaeff876e56cd0c2f3551113ea8091c9033459a38"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.16/cc-bash-guard_v0.2.16_macos_x64.tar.gz"
      sha256 "c0f56b7d68419939b02af5642eaf8730ff7efccfcc37df385557dcd9456705ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.16/cc-bash-guard_v0.2.16_linux_arm64.tar.gz"
      sha256 "b031c65e55c8007d41fde1e66a061beaf4b14ee5035f97e9da3fdf9b52b2cfeb"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.16/cc-bash-guard_v0.2.16_linux_x64.tar.gz"
      sha256 "b57498cfe27f52aac7639fdcc93eec3c09e3ec7ae5244924352e648c163cd3fe"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
