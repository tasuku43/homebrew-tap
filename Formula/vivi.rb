class Vivi < Formula
  desc "Read-only visual workspace viewer for agent-written local files"
  homepage "https://github.com/tasuku43/vivi"
  license "MIT"

  version "0.0.36"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.36/vivi_Darwin_arm64.tar.gz"
      sha256 "baf365edc0f58fcb99736b72af33541b9871b23938b64531d3be3e211cbaaced"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.36/vivi_Darwin_x86_64.tar.gz"
      sha256 "c7308aa15d658ecacd318cff4e69e3892892ced20cb43b7cec0a8a17852018c9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.36/vivi_Linux_arm64.tar.gz"
      sha256 "bf558e8dfb2a577d9fb62602ad213405bd8e24678225f814f05bd09e9401e645"
    else
      url "https://github.com/tasuku43/vivi/releases/download/v0.0.36/vivi_Linux_x86_64.tar.gz"
      sha256 "41e8bc37aee74f1ca9cbee3709f6e52d4de2afec86d9066c7d86a120e336f876"
    end
  end

  def install
    bin.install "vivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vivi --version")
  end
end
