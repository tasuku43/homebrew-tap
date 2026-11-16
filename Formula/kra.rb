class Kra < Formula
  desc "Workspace orchestration CLI with state-first guardrails"
  homepage "https://github.com/tasuku43/kra"
  license "MIT"

  version "0.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.7.1/kra_v0.7.1_macos_arm64.tar.gz"
      sha256 "33e3af5df9fa6a9bf40b38eed87fef0694ba1b9121e7ab6cb881243272dc8e52"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.7.1/kra_v0.7.1_macos_x64.tar.gz"
      sha256 "67033acbbf1d6ef7590d26227e94aa9a7a9527dfb03838ecf061abb7026b2bf6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.7.1/kra_v0.7.1_linux_arm64.tar.gz"
      sha256 "94ab9fa9fdb083751762ace9ac656575ec45c47603af02a6b6484f0a95e276ee"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.7.1/kra_v0.7.1_linux_x64.tar.gz"
      sha256 "58b68f566327360620b985d020c45f39296cf7c31e163e584224dc7084dd1b5d"
    end
  end

  def install
    bin.install "kra"
  end

  test do
    system "#{bin}/kra", "version"
  end
end
