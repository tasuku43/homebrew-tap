class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.31"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.31/vivi_Darwin_arm64.tar.gz"
      sha256 "866cc3da33d28bbd9e659ad522d4131d9e1eae8d2c8b3c68510b08a96808c36a"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.31/vivi_Darwin_x86_64.tar.gz"
      sha256 "9d9a290da63da27cf8f38e4aec4b789834f2f2003649e9740a1c60e74de94941"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.31/vivi_Linux_arm64.tar.gz"
      sha256 "cc5003f3b1b7849a3d9c62009c5b4beed16b99a8fc6a0d58855dae4db7b1f994"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.31/vivi_Linux_x86_64.tar.gz"
      sha256 "eb58bc89648cc3b2b6672b925d446d27e5375e1af05c79cb4eb039126b48d391"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
