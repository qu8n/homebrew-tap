class Mddog < Formula
  desc "Render Markdown in the terminal the way a browser shows it"
  homepage "https://mddog.pages.dev"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/qu8n/mddog/releases/download/v1.3.0/mdd-macos-arm64.tar.gz"
      sha256 "d4ef1d24a58e07db880aa838ece1f1063422b5131ba72c3024cc60100b873621"
    end
    on_intel do
      url "https://github.com/qu8n/mddog/releases/download/v1.3.0/mdd-macos-x86_64.tar.gz"
      sha256 "23acc970a9cb9a65a359794d2a0759527d78f43c1192f450f737e35c73fbf826"
    end
  end

  def install
    bin.install "mdd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdd --version")
  end
end
