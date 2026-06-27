class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.9/vivi_Darwin_arm64.tar.gz"
      sha256 "f383a2ef7a4a4e60338f42bc1fe0ad566938478d440b4d3189ee7e81ff13919d"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.9/vivi_Darwin_x86_64.tar.gz"
      sha256 "318b7ad54cb38b6fa74bb2b26afe487c8b4ff404fef339923f054681171769af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.9/vivi_Linux_arm64.tar.gz"
      sha256 "e401e0c2eeee253ab486577e517a7161a64640e42e744b32339c6fdf32e20fbd"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.9/vivi_Linux_x86_64.tar.gz"
      sha256 "bb5934bd2586c83bf8629d7f885096ef24a53db7eeed6aeb0b53ef13687a21c3"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
