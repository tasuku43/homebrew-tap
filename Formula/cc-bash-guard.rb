class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.2.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.13/cc-bash-guard_v0.2.13_macos_arm64.tar.gz"
      sha256 "ef977d8caf967091955f3e6e60ca01ed1155713b12fab92d922f1a22a392427e"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.13/cc-bash-guard_v0.2.13_macos_x64.tar.gz"
      sha256 "8eada44643f0ab37e8bbb1404d5d4b7ea6c239970d93f48a46dc3a9dd260f877"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.13/cc-bash-guard_v0.2.13_linux_arm64.tar.gz"
      sha256 "c9f4404146eeb2d026fa584e00c10c5449b9fad56d8c121bbb1905cf5dc44f04"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.13/cc-bash-guard_v0.2.13_linux_x64.tar.gz"
      sha256 "535153f6649a596577a0ac83a9963532b76b870edf80d1daf228e1eb2865ac80"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end

