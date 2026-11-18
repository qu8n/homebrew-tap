class Mddog < Formula
  desc "Render Markdown in the terminal the way a browser shows it"
  homepage "https://mddog.pages.dev"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/qu8n/mddog/releases/download/v1.0.6/mdd-macos-arm64.tar.gz"
      sha256 "baa23d5b063165c8fa28c11e1c3a76bf3306b2dbb5c2707cce3e98530ac0ec70"
    end
    on_intel do
      url "https://github.com/qu8n/mddog/releases/download/v1.0.6/mdd-macos-x86_64.tar.gz"
      sha256 "94a4aa8f5e55ce06e837c7e92297b61d851b87d45f3d0a021910360a851eb4d2"
    end
  end

  def install
    bin.install "mdd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdd --version")
  end
end
