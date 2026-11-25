class Mddog < Formula
  desc "Render Markdown in the terminal the way a browser shows it"
  homepage "https://mddog.pages.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/qu8n/mddog/releases/download/v1.5.0/mdd-macos-arm64.tar.gz"
      sha256 "3bcda11632ccf587230a7a32fc2f027218f905df8c99f8ffa1ab313b63ea871f"
    end
    on_intel do
      url "https://github.com/qu8n/mddog/releases/download/v1.5.0/mdd-macos-x86_64.tar.gz"
      sha256 "b714427261f739dd935812f5a9c74ee3bc77240cd12e87396ac22d98d7f03010"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/qu8n/mddog/releases/download/v1.5.0/mdd-linux-arm64.tar.gz"
      sha256 "a8c212cdc001d49f8b9a7cff1eeb58dd137c92bb21ba44451ec4469e58906464"
    end
    on_intel do
      url "https://github.com/qu8n/mddog/releases/download/v1.5.0/mdd-linux-x86_64.tar.gz"
      sha256 "0902559cb2c3120f605d73f5518002e7db76ea24e4d3f54d6c3377ab095b6fd7"
    end
  end

  def install
    bin.install "mdd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdd --version")
  end
end
