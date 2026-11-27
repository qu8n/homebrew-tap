class Mddog < Formula
  desc "Render Markdown in the terminal the way a browser shows it"
  homepage "https://mddog.pages.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/qu8n/mddog/releases/download/v1.6.0/mdd-macos-arm64.tar.gz"
      sha256 "d84ac460e20d02000da701892c7f9135e94b8e82d9ce978ae8aa337c28667cee"
    end
    on_intel do
      url "https://github.com/qu8n/mddog/releases/download/v1.6.0/mdd-macos-x86_64.tar.gz"
      sha256 "4c78ba7b17457ffd0c19f2c8b094b040f676176e4b71ff41e98ad1d8c88dbe1f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/qu8n/mddog/releases/download/v1.6.0/mdd-linux-arm64.tar.gz"
      sha256 "cd6770bd59153b12e2da0c3d0f2fae64877b59f1f1099842c05cc06433ecf5de"
    end
    on_intel do
      url "https://github.com/qu8n/mddog/releases/download/v1.6.0/mdd-linux-x86_64.tar.gz"
      sha256 "f99354bbb117bb93c28bdb305aa80c4e47fc3a4c3f1abc66d033bbc801b4e628"
    end
  end

  def install
    bin.install "mdd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdd --version")
  end
end
