class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.40"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.40/vivi_Darwin_arm64.tar.gz"
      sha256 "35bbd6307128f695843a0a477520711131712c24b87073297dd08fed2a7a5711"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.40/vivi_Darwin_x86_64.tar.gz"
      sha256 "eae73e47a1ab9d57dfed865f3e7e5f48a0381df590440ad0d1374c8c30fbdb03"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.40/vivi_Linux_arm64.tar.gz"
      sha256 "c0bb743681f7447d5a61e3a766e6c989f1a1ac4eb617b0dd913ea93c05c877fc"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.40/vivi_Linux_x86_64.tar.gz"
      sha256 "d8773a6a3b18f65d963102d7433c6c4908e2aab1d680a00741bca12ba9ecf258"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
