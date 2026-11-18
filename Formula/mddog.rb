class Mddog < Formula
  desc "Render Markdown in the terminal the way a browser shows it"
  homepage "https://mddog.pages.dev"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/qu8n/mddog/releases/download/v1.0.7/mdd-macos-arm64.tar.gz"
      sha256 "5fc934f2e90b57576eb30a4efd27aa55b178b79a286d7f1838085cd269cb50f7"
    end
    on_intel do
      url "https://github.com/qu8n/mddog/releases/download/v1.0.7/mdd-macos-x86_64.tar.gz"
      sha256 "9819007ec8627dc417405e313db3b8d095c353e0f753b027e503c457eda603c9"
    end
  end

  def install
    bin.install "mdd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdd --version")
  end
end
