class Mddog < Formula
  desc "Render Markdown in the terminal the way a browser shows it"
  homepage "https://mddog.pages.dev"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/qu8n/mddog/releases/download/v1.0.0/mdd-macos-arm64.tar.gz"
      sha256 "1b8c1ff2d237d0798bdfd7f1539407feefd1a3595cdf39107af33bfc5e9ad1bb"
    end
    on_intel do
      url "https://github.com/qu8n/mddog/releases/download/v1.0.0/mdd-macos-x86_64.tar.gz"
      sha256 "c291fb6b79270dc856a1427bcb4d452ea3241661a647aa53b5b3c55b85e085fe"
    end
  end

  def install
    bin.install "mdd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdd --version")
  end
end
