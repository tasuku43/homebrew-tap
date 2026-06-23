class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.3/vivi_Darwin_arm64.tar.gz"
      sha256 "118299e187cd67c78de386c18e4c9fc13337e90ab1f66e04a04fdbb5a3be124b"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.3/vivi_Darwin_x86_64.tar.gz"
      sha256 "1077458a9b9d9ede25eb50f32be9cd63c736664fe87d816c7819789f79b1d596"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.3/vivi_Linux_arm64.tar.gz"
      sha256 "f0b70da56ca38d8db4d35ccf5aa6d5ead7a6b84c98f554a8ce32d46335b7ee82"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.3/vivi_Linux_x86_64.tar.gz"
      sha256 "f69199c18976a9616924410236484b4afbe5c53a4c90f34f08d3a8a7618a9ff1"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
