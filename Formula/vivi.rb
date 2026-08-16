class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.24"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.24/vivi_Darwin_arm64.tar.gz"
      sha256 "28d6487f5b34bf982462d35c414d050115e12fd614f45162adbfd906fc669d6a"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.24/vivi_Darwin_x86_64.tar.gz"
      sha256 "d56bd50cd21b00616758a0d323759c696f7082b549a33ef979dad1d816b177ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.24/vivi_Linux_arm64.tar.gz"
      sha256 "ddba2cc2410f12f0c92f45c5fe721e64525b2392420f4d3e77300c037bf23190"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.24/vivi_Linux_x86_64.tar.gz"
      sha256 "3dac032af7d8e8e9a04724088ce6bf65c4b9c3402270c34e69c53bdbe8d21ebd"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
