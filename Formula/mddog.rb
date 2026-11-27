class Mddog < Formula
  desc "Render Markdown in the terminal the way a browser shows it"
  homepage "https://mddog.pages.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/qu8n/mddog/releases/download/v1.5.1/mdd-macos-arm64.tar.gz"
      sha256 "e791a728f36a82290e051f2bbc138e3091dcb49037a0cdec22ed9649d776d79d"
    end
    on_intel do
      url "https://github.com/qu8n/mddog/releases/download/v1.5.1/mdd-macos-x86_64.tar.gz"
      sha256 "e0a2826a045e8ab0b6f031a5f298fae6bf04eb46f291cc7c36e61445f640d8fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/qu8n/mddog/releases/download/v1.5.1/mdd-linux-arm64.tar.gz"
      sha256 "e9052549476a14d470a6bfcd293c6bc08e42538a3f34cd4069c23cd81b2fecda"
    end
    on_intel do
      url "https://github.com/qu8n/mddog/releases/download/v1.5.1/mdd-linux-x86_64.tar.gz"
      sha256 "a05abd288d6a2c818f15d0f750136997ee34cd79e85ebbc69712cab602a54a73"
    end
  end

  def install
    bin.install "mdd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdd --version")
  end
end
