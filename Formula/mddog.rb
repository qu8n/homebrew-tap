class Mddog < Formula
  desc "Render Markdown in the terminal the way a browser shows it"
  homepage "https://mddog.pages.dev"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/qu8n/mddog/releases/download/v1.2.0/mdd-macos-arm64.tar.gz"
      sha256 "3589bacc349c62caea44961cfe702f579ae8a62c81f7eca7d5bf3a0c5544f9b3"
    end
    on_intel do
      url "https://github.com/qu8n/mddog/releases/download/v1.2.0/mdd-macos-x86_64.tar.gz"
      sha256 "d3838591e9fd8cdbd75960a02b3b0bc6b7237f5a0209079d5cc3a208b8734a20"
    end
  end

  def install
    bin.install "mdd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdd --version")
  end
end
