class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.13/vivi_Darwin_arm64.tar.gz"
      sha256 "49112467050f071f32d74d4b0b03122578ab86749dad69f48dcac7aa4f109f7f"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.13/vivi_Darwin_x86_64.tar.gz"
      sha256 "4814bbe33c8ff6cddefa5847cabd30bfb94dd2cf3cbdcfca12dd386c14c3d3f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.13/vivi_Linux_arm64.tar.gz"
      sha256 "6e0a09687c6cf5eb2aff8ea40fa568d0a23a63673f52d6ef47f7c0d7611a1ffd"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.13/vivi_Linux_x86_64.tar.gz"
      sha256 "d7c38c38f33d6d154ce571d283fc141ec9b10fdcb1071fd8f03fe2d4fab3d371"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
