class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.4/vivi_Darwin_arm64.tar.gz"
      sha256 "4bf7a3e095c1651cf90266df9d7663ef5baeb188d83617b448b055e60b228197"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.4/vivi_Darwin_x86_64.tar.gz"
      sha256 "2dc43dc5a5838f1e9e5d7eaab87fceb7c5b011cc7e3ee0d52f431f22a1836eb2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.4/vivi_Linux_arm64.tar.gz"
      sha256 "2f01a87bf707125c3a3116c48d0ed68b9fb1e1e7cdcfea79b978e6f3e3935fdb"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.4/vivi_Linux_x86_64.tar.gz"
      sha256 "d9443b6cf72123d6e0e40301d6c0c4a4177e6b8d5179b96e90600b7d84277527"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
