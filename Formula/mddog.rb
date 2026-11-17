class Mddog < Formula
  desc "Render Markdown in the terminal the way a browser shows it"
  homepage "https://mddog.pages.dev"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/qu8n/mddog/releases/download/v1.0.4/mdd-macos-arm64.tar.gz"
      sha256 "659ab13c4f0e70ca76bc4b96dec5d51fcb0800f67363989d4ecc2d966a2ee6f2"
    end
    on_intel do
      url "https://github.com/qu8n/mddog/releases/download/v1.0.4/mdd-macos-x86_64.tar.gz"
      sha256 "964482db82a5c303f1e615f926cd7c16e6902a3eec2698f35b8f2b890a769910"
    end
  end

  def install
    bin.install "mdd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdd --version")
  end
end
