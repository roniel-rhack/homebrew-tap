class RipGo < Formula
  desc "Fuzzy find and kill processes from your terminal"
  homepage "https://github.com/roniel-rhack/rip-go"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roniel-rhack/rip-go/releases/download/v#{version}/rip-go-darwin-arm64.tar.gz"
      sha256 "ec0d1a161dc3dc25068d934ad4c5f117b9fde1805b4c6a60277a3303fb6dbeb5"
    end
    on_intel do
      url "https://github.com/roniel-rhack/rip-go/releases/download/v#{version}/rip-go-darwin-amd64.tar.gz"
      sha256 "ec171ef02327d55697ccd7d486dcb0292b745f17c4a8a11cb1d58510b807d0d7"
    end
  end

  on_linux do
    url "https://github.com/roniel-rhack/rip-go/releases/download/v#{version}/rip-go-linux-amd64.tar.gz"
    sha256 "ff42538d5b181d80877a3fbd9c8e2ebc597fc8a6c5db12fcd96aafd28a6b980f"
  end

  def install
    bin.install "rip-go"
  end

  test do
    system "#{bin}/rip-go", "--version"
  end
end
