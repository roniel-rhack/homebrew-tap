class RipGo < Formula
  desc "Fuzzy find and kill processes from your terminal"
  homepage "https://github.com/roniel-rhack/rip-go"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roniel-rhack/rip-go/releases/download/v#{version}/rip-go-darwin-arm64.tar.gz"
      sha256 "5c962be9566590d304692a16cd3a25ee47f1c7ff66d99316eebc3e7a2cc7924d"
    end
    on_intel do
      url "https://github.com/roniel-rhack/rip-go/releases/download/v#{version}/rip-go-darwin-amd64.tar.gz"
      sha256 "976e6434683e479cae476ca0ceaf736d0dee90654dcd2d4a38d32aad02170f7d"
    end
  end

  on_linux do
    url "https://github.com/roniel-rhack/rip-go/releases/download/v#{version}/rip-go-linux-amd64.tar.gz"
    sha256 "9396ef2d17614a26cc5e20c54b1ea409a6c9a13605c3e6bea8a1d7905210a702"
  end

  def install
    bin.install "rip-go"
  end

  test do
    system "#{bin}/rip-go", "--version"
  end
end
