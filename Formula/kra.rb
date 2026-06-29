class Kra < Formula
  desc "Workspace orchestration CLI with state-first guardrails"
  homepage "https://github.com/tasuku43/kra"
  license "MIT"

  version "0.5.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.5.16/kra_v0.5.16_macos_arm64.tar.gz"
      sha256 "279beb72a7de02fd52dce8777934fd612300bf1cf4d4293719e64ec81e24688c"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.5.16/kra_v0.5.16_macos_x64.tar.gz"
      sha256 "a6c18b037f0b217df937f150f9fa1b513a26326783a7e55d62fd26d72ba2c19a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.5.16/kra_v0.5.16_linux_arm64.tar.gz"
      sha256 "1ad5ad96292007e06fb88ce9d193860b9d5c77c6d8be0f85d809172c19344f83"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.5.16/kra_v0.5.16_linux_x64.tar.gz"
      sha256 "9fba326edd019ca74732dece54c34a5b9852aded3a251f2acb28a705cc04abca"
    end
  end

  def install
    bin.install "kra"
  end

  test do
    system "#{bin}/kra", "version"
  end
end
