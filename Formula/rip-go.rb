class RipGo < Formula
  desc "Fuzzy find and kill processes from your terminal"
  homepage "https://github.com/roniel-rhack/rip-go"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roniel-rhack/rip-go/releases/download/v#{version}/rip-go-darwin-arm64.tar.gz"
      sha256 "f247328c7d67e46eb2da561c8a9b9f31b1ad700e8b768cdbd0d8034bcaa05235"
    end
    on_intel do
      url "https://github.com/roniel-rhack/rip-go/releases/download/v#{version}/rip-go-darwin-amd64.tar.gz"
      sha256 "236ce4a804ad449f49c9b79186cf5522124621fb418132c6e19a52ed32ed5847"
    end
  end

  on_linux do
    url "https://github.com/roniel-rhack/rip-go/releases/download/v#{version}/rip-go-linux-amd64.tar.gz"
    sha256 "0e1aaaf3537843a0116eaa39e3434e4ed4b1464e6f431a773b30b2e11f452c9d"
  end

  def install
    bin.install "rip-go"
  end

  test do
    system "#{bin}/rip-go", "--version"
  end
end
