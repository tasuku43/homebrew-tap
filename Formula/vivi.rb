class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.12/vivi_Darwin_arm64.tar.gz"
      sha256 "2b703aa9bc79f4cc30eaea717d013944311c009ed022c3e91cb9f5e2ff025e8b"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.12/vivi_Darwin_x86_64.tar.gz"
      sha256 "f19f1371058993ebcd6abc8ea6313508bbd893e648a425c87ed580b5f5fc49ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.12/vivi_Linux_arm64.tar.gz"
      sha256 "6b18e67b953d264f280c0675ed8a4585db242e94ab72f08f471cf347c1acb19c"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.12/vivi_Linux_x86_64.tar.gz"
      sha256 "6c19724901ccc4a4c8dfbc97817d8d5876e653b963f91d33a4eb17ddd7dd2992"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
