class Cwk < Formula
  desc "Chatworkをタスク単位で操作するCLI。"
  homepage "https://github.com/tasuku43/cwk"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cwk/releases/download/v0.4.0/cwk_v0.4.0_darwin_arm64.tar.gz"
      sha256 "adfcbe4290279be15f85d9b99e26b28af94052de5f4d353792029082c0cde376"
    else
      url "https://github.com/tasuku43/cwk/releases/download/v0.4.0/cwk_v0.4.0_darwin_amd64.tar.gz"
      sha256 "d7fb380cb1ac511712a9444332f41ab387d7fb63e95da41d76964abfe155b11f"
    end
  end

  def install
    bin.install "cwk"
    doc.install "LICENSE", "THIRD_PARTY_NOTICES"
  end

  test do
    assert_match "cwk #{version}", shell_output("#{bin}/cwk version")
  end
end
