class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.29"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.29/vivi_Darwin_arm64.tar.gz"
      sha256 "3aad7a12c4cc17b292dd41dbe7677a1b05870b64592aaf0175e969336f3817f4"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.29/vivi_Darwin_x86_64.tar.gz"
      sha256 "7ed693a7eab167b4d29828b5c6a5faacb28253a04603a1787a95c65d7b2ab323"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.29/vivi_Linux_arm64.tar.gz"
      sha256 "33e1fb2ca9e1aad1bb2548689c85b59118eb4a23545861e2bb92ea67d971b723"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.29/vivi_Linux_x86_64.tar.gz"
      sha256 "c411b2a25389fa9071740f93e753b6b0ba99192d2503ff0b2674c8beed7a5fa1"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
