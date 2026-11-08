class Mddog < Formula
  desc "Render Markdown in the terminal the way a browser shows it"
  homepage "https://mddog.pages.dev"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/qu8n/mddog/releases/download/v1.0.0/mdd-macos-arm64.tar.gz"
      sha256 "1264491437c68754d56367c91ef8240a9633552cec2937658b1f7163b8a6c22c"
    end
    on_intel do
      url "https://github.com/qu8n/mddog/releases/download/v1.0.0/mdd-macos-x86_64.tar.gz"
      sha256 "ce7677e07cc686b1fb4126b187e8ee66bfde2f4dde605258f22bb461ea420c6c"
    end
  end

  def install
    bin.install "mdd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdd --version")
  end
end
