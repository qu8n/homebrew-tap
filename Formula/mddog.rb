class Mddog < Formula
  desc "Render Markdown in the terminal the way a browser shows it"
  homepage "https://mddog.pages.dev"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/qu8n/mddog/releases/download/v1.0.5/mdd-macos-arm64.tar.gz"
      sha256 "feba081013ffba45597b23cbe77f4892517be94c5d091247de7400d977d20411"
    end
    on_intel do
      url "https://github.com/qu8n/mddog/releases/download/v1.0.5/mdd-macos-x86_64.tar.gz"
      sha256 "53f7bd2404d531cef268cb73ea573f10bc33290cb24a6ccd862cc629feb67694"
    end
  end

  def install
    bin.install "mdd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdd --version")
  end
end
