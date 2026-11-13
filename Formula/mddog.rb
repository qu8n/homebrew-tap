class Mddog < Formula
  desc "Render Markdown in the terminal the way a browser shows it"
  homepage "https://mddog.pages.dev"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/qu8n/mddog/releases/download/v1.0.1/mdd-macos-arm64.tar.gz"
      sha256 "4a011b91abb9199453bdea991a4b7f06f19dda70d48c4270f48f01fa47fff7b0"
    end
    on_intel do
      url "https://github.com/qu8n/mddog/releases/download/v1.0.1/mdd-macos-x86_64.tar.gz"
      sha256 "09b29ed4257af95e27800c55782713a425ffb5a6606075db79537b1c9be1f526"
    end
  end

  def install
    bin.install "mdd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdd --version")
  end
end
