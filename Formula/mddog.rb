class Mddog < Formula
  desc "Render Markdown in the terminal the way a browser shows it"
  homepage "https://mddog.pages.dev"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/qu8n/mddog/releases/download/v1.0.2/mdd-macos-arm64.tar.gz"
      sha256 "2fab97138f3532637d711ace081582cc5af4974cf378bfec5ea89495c8d66906"
    end
    on_intel do
      url "https://github.com/qu8n/mddog/releases/download/v1.0.2/mdd-macos-x86_64.tar.gz"
      sha256 "229d058652e1dc43cfe077bbad94d500e7927b0725e865142da9b67a6d8df660"
    end
  end

  def install
    bin.install "mdd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdd --version")
  end
end
