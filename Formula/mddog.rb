class Mddog < Formula
  desc "Render Markdown in the terminal the way a browser shows it"
  homepage "https://mddog.pages.dev"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/qu8n/mddog/releases/download/v1.0.8/mdd-macos-arm64.tar.gz"
      sha256 "c48bd80a58d2ec3b08bc02aa31b1bfe6fb8f503ff5a512eb8b2fe89e428a93cd"
    end
    on_intel do
      url "https://github.com/qu8n/mddog/releases/download/v1.0.8/mdd-macos-x86_64.tar.gz"
      sha256 "b0c7cbfd347a792137b3cbce3ca3335557b716f2955aceb8b3ac08cfbdcae7aa"
    end
  end

  def install
    bin.install "mdd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdd --version")
  end
end
