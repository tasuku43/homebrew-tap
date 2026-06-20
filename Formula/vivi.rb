class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.2.0/vivi_Darwin_arm64.tar.gz"
      sha256 "24574b830ac8a451cc7dc82d9c6f779bb619e5bad3e16d891aaa3fe5f5e94b7d"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.2.0/vivi_Darwin_x86_64.tar.gz"
      sha256 "887e1286895deef04fd8d9d598191001ec589907f78227c0605e4a649d64af0c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.2.0/vivi_Linux_arm64.tar.gz"
      sha256 "8a873f1d08eaecbf4bcaccc749e61f047282d033030cac15fcc3129eb4f53ab5"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.2.0/vivi_Linux_x86_64.tar.gz"
      sha256 "af35d661e6b7a34cfbbfc3fe232d2cb38fe61fe89539ec6684532415a50e1100"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
