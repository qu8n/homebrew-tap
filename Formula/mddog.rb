class Mddog < Formula
  desc "Render Markdown in the terminal the way a browser shows it"
  homepage "https://mddog.pages.dev"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/qu8n/mddog/releases/download/v1.0.3/mdd-macos-arm64.tar.gz"
      sha256 "869dbf7db538903ee0ed8a584706926f6eb8016d28eb439eb2bb6aeb5a993d0c"
    end
    on_intel do
      url "https://github.com/qu8n/mddog/releases/download/v1.0.3/mdd-macos-x86_64.tar.gz"
      sha256 "44d1e20eeecc614934ceb910098dd51e68bc9e8d25e0d64a467d8942b2c56a69"
    end
  end

  def install
    bin.install "mdd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdd --version")
  end
end
