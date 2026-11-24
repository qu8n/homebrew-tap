class Mddog < Formula
  desc "Render Markdown in the terminal the way a browser shows it"
  homepage "https://mddog.pages.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/qu8n/mddog/releases/download/v1.4.0/mdd-macos-arm64.tar.gz"
      sha256 "0e906a6ff0c17de97dc3bd96b972b79153562e9a80a76c3a9f8342695e067782"
    end
    on_intel do
      url "https://github.com/qu8n/mddog/releases/download/v1.4.0/mdd-macos-x86_64.tar.gz"
      sha256 "3f9f8bdcbed574a864cc602952fb4415cf337570e9ee0afb52d2d25580247e07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/qu8n/mddog/releases/download/v1.4.0/mdd-linux-arm64.tar.gz"
      sha256 "a4e6cfa31f22d5883b0a387958d18bc0141b072ec4ae86b309432cbb5f023c78"
    end
    on_intel do
      url "https://github.com/qu8n/mddog/releases/download/v1.4.0/mdd-linux-x86_64.tar.gz"
      sha256 "82b1e97a31e3275872f0fc1bca83f940aa6ef1392b4c6cc4defcb5882e9dfb75"
    end
  end

  def install
    bin.install "mdd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdd --version")
  end
end
