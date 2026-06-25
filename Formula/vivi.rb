class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.7/vivi_Darwin_arm64.tar.gz"
      sha256 "56d999091a9b18a7e6461c05bd9a893f7203a0af58fad4ed41c7ba7dd27ea7df"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.7/vivi_Darwin_x86_64.tar.gz"
      sha256 "6c629be61002d8865c5919545b6157cbb49c3ecd559477a0b45139dc3a7f96f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.7/vivi_Linux_arm64.tar.gz"
      sha256 "502c3b74e94fba62cd97b93227b8806f91eccc8dd3797f6878da135db8d8acf2"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.7/vivi_Linux_x86_64.tar.gz"
      sha256 "90109dd7147c37f70e65336e1fd8863a52c6fd7a95b6071f07de7a9a3581cd62"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
