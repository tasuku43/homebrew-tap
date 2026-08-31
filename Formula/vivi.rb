class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.34"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.34/vivi_Darwin_arm64.tar.gz"
      sha256 "747be0796c128949371ff5592dde779dcd13deef0bb4095724f1874f58bd0d05"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.34/vivi_Darwin_x86_64.tar.gz"
      sha256 "6a3345ec5bfe2faa446809913254af69abf3e3dd190bb2c71259c4717d7e1594"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.34/vivi_Linux_arm64.tar.gz"
      sha256 "9aafdaa7536201b4ed99f506cb7ba50abfa97befd57d3e3816533df2900f5d79"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.34/vivi_Linux_x86_64.tar.gz"
      sha256 "00b0ae55faaeab2b9d362fa08834d2ae32df5b40ce37d288fe48753ee4b1e48b"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
