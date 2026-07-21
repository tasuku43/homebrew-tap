class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.2.19"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.19/cc-bash-guard_v0.2.19_macos_arm64.tar.gz"
      sha256 "669013dcb1bccc88fc636b4590e60a91ddfbf7680d3fd41473b4b75f870096b5"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.19/cc-bash-guard_v0.2.19_macos_x64.tar.gz"
      sha256 "80201cca704b42cab7122d456201b4f3b16de7d79a90b0964419e6baf9f84e71"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.19/cc-bash-guard_v0.2.19_linux_arm64.tar.gz"
      sha256 "171cbdde87381d626832d106ef6b50486224fb46cbf3fe2d5572bbf6dec5ec18"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.19/cc-bash-guard_v0.2.19_linux_x64.tar.gz"
      sha256 "481d4276c1c3e0ad72b803649e47b705eb52ad1af715a0ffbb003487e8031026"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
