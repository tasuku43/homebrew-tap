class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.2.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.15/cc-bash-guard_v0.2.15_macos_arm64.tar.gz"
      sha256 "3967853201a5af571525e7067121989f32df12c01124451c07f21eee21adecbb"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.15/cc-bash-guard_v0.2.15_macos_x64.tar.gz"
      sha256 "db34fcc205ffd9c30394e198c1d47299073a42565c4f32d029f689ef2a64dc93"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.15/cc-bash-guard_v0.2.15_linux_arm64.tar.gz"
      sha256 "1c89b0ede07479765b3ae9a895a87efb19d970295ac866d5c3fef624530c5ead"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.15/cc-bash-guard_v0.2.15_linux_x64.tar.gz"
      sha256 "980a70cda753779c49790678d094c3c6a9ba7407fec29ad74ae54b4ec8daabd0"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
