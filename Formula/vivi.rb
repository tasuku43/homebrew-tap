class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.14/vivi_Darwin_arm64.tar.gz"
      sha256 "90409d9710c096f4b2bf019d9bd45bdcfe45e415d89cc03fe6907f6b076af63a"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.14/vivi_Darwin_x86_64.tar.gz"
      sha256 "93054207dfce276aad65935b08d32c2b6786b26f1c1b19ed77bb9800ee5fb756"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.14/vivi_Linux_arm64.tar.gz"
      sha256 "3d63d0202de0b0a57d5a2241c89f43d9378ee209c12f07da0948fd52a62eefed"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.14/vivi_Linux_x86_64.tar.gz"
      sha256 "15486f9dc61738abbe883f8b53114f2cb169f0c528e685cebcf7d8797d59a4c5"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
