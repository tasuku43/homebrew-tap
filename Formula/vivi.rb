class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.2.1/vivi_Darwin_arm64.tar.gz"
      sha256 "290b957906e8ce31da218908c9403dcb7f2da76736f91e976ac3010694652e7f"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.2.1/vivi_Darwin_x86_64.tar.gz"
      sha256 "d0526bfec97ab45f8c94532154ae63b01489fb2100bf61c2f7c3b0c5a9c3e3e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.2.1/vivi_Linux_arm64.tar.gz"
      sha256 "e365c6545ce40217491029a3bf701ddda9662c0386364c8aefa609af4387db7c"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.2.1/vivi_Linux_x86_64.tar.gz"
      sha256 "3c3498b197414ff6d7306487ab436b78b41f7c9c74b240a2711076d7d65b8fe8"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
