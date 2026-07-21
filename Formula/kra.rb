class Kra < Formula
  desc "Workspace orchestration CLI with state-first guardrails"
  homepage "https://github.com/tasuku43/kra"
  license "MIT"

  version "0.5.18"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.5.18/kra_v0.5.18_macos_arm64.tar.gz"
      sha256 "34cca18f7cd4637c3618248a4faa292c81d668f670eb3b9c9d0794b33d12fa12"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.5.18/kra_v0.5.18_macos_x64.tar.gz"
      sha256 "8188ca0e0b5c45f3fb3b26c0e99154a2a1862ddb45add7b6f76d53cb7df5bb7a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.5.18/kra_v0.5.18_linux_arm64.tar.gz"
      sha256 "0205e80b1eb3b3244cb0c0ce3f83c9ff7900941deb9a59b217ecb9dbb9fe77a5"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.5.18/kra_v0.5.18_linux_x64.tar.gz"
      sha256 "41996fb05e8af98f0e86e83a73290eaeeb88b6b96cfcd46d61fe7be2ed7d50b5"
    end
  end

  def install
    bin.install "kra"
  end

  test do
    system "#{bin}/kra", "version"
  end
end
