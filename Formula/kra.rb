class Kra < Formula
  desc "Workspace orchestration CLI with state-first guardrails"
  homepage "https://github.com/tasuku43/kra"
  license "MIT"

  version "0.5.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.5.15/kra_v0.5.15_macos_arm64.tar.gz"
      sha256 "46399e24980970b0bfb6d8879579c967c324c29614e9c0fdbbae01f06b79a637"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.5.15/kra_v0.5.15_macos_x64.tar.gz"
      sha256 "504bc1737e71801d7425ecba3972efd2292037519c2c7022dd7da0505818a10d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.5.15/kra_v0.5.15_linux_arm64.tar.gz"
      sha256 "abfdce73517f98da8f2c4acabba5258143e5cc8da47cc8e58251ab3b9f5e38d1"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.5.15/kra_v0.5.15_linux_x64.tar.gz"
      sha256 "e3f07026f023e4437b00d2ef3eb2e4819e15ab4f5fb46e31ed7175e9acc9487d"
    end
  end

  def install
    bin.install "kra"
  end

  test do
    system "#{bin}/kra", "version"
  end
end
