class RipGo < Formula
  desc "Fuzzy find and kill processes from your terminal"
  homepage "https://github.com/roniel-rhack/rip-go"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roniel-rhack/rip-go/releases/download/v#{version}/rip-go-darwin-arm64.tar.gz"
      sha256 "20376c0216424183d6bfa3e427f53187b2124702f2569db4f4b2f8884853465f"
    end
    on_intel do
      url "https://github.com/roniel-rhack/rip-go/releases/download/v#{version}/rip-go-darwin-amd64.tar.gz"
      sha256 "b70aac5667bab55ee9fb50cce9cd526bfcf8f119bb426c806184a67e8944e525"
    end
  end

  on_linux do
    url "https://github.com/roniel-rhack/rip-go/releases/download/v#{version}/rip-go-linux-amd64.tar.gz"
    sha256 "232f118457a47ab6b0f7cd065d4fb0bf1e702066bb528131bb036367d8234819"
  end

  def install
    bin.install "rip-go"
  end

  test do
    system "#{bin}/rip-go", "--version"
  end
end
