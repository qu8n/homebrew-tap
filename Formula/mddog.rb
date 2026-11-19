class Mddog < Formula
  desc "Render Markdown in the terminal the way a browser shows it"
  homepage "https://mddog.pages.dev"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/qu8n/mddog/releases/download/v1.1.0/mdd-macos-arm64.tar.gz"
      sha256 "ebed90939479944c26b5d2d3d248aa7f7024e12de6de1698f7921c6c9503675c"
    end
    on_intel do
      url "https://github.com/qu8n/mddog/releases/download/v1.1.0/mdd-macos-x86_64.tar.gz"
      sha256 "de8d8eecd0952cd4704d3a222bdcf9f819f1cd9a11def667579d01aff11aafc6"
    end
  end

  def install
    bin.install "mdd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdd --version")
  end
end
