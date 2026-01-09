class RipGo < Formula
  desc "Fuzzy find and kill processes from your terminal"
  homepage "https://github.com/roniel-rhack/rip-go"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roniel-rhack/rip-go/releases/download/v#{version}/rip-go-darwin-arm64.tar.gz"
      sha256 "4fdd76f105201dae834d087ded63e90390e6229270bc3fe9c8ea827dc1faf7a0"
    end
    on_intel do
      url "https://github.com/roniel-rhack/rip-go/releases/download/v#{version}/rip-go-darwin-amd64.tar.gz"
      sha256 "e497c4dcce6c3f41a8f3d74cfbc0b099bc11669e8620b8a44844c72d82b09fdc"
    end
  end

  on_linux do
    url "https://github.com/roniel-rhack/rip-go/releases/download/v#{version}/rip-go-linux-amd64.tar.gz"
    sha256 "de1641e104a3b6c91708af4155190f6182550133ac24c9f1de18ede27ec394cb"
  end

  def install
    bin.install "rip-go"
  end

  test do
    system "#{bin}/rip-go", "--version"
  end
end
