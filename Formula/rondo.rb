class Rondo < Formula
  desc "A TUI todo and journal app for the terminal"
  homepage "https://github.com/roniel-rhack/rondo"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roniel-rhack/rondo/releases/download/v#{version}/rondo-darwin-arm64.tar.gz"
      sha256 "46a11764483c1442959356c47bacedbb75a36c252b287be5b5a92135b3bcc35b"
    end
    on_intel do
      url "https://github.com/roniel-rhack/rondo/releases/download/v#{version}/rondo-darwin-amd64.tar.gz"
      sha256 "6bd86d00637af94e9510277a5eb633000da9bf6ecb39bcd97fce02c60a7f5ec7"
    end
  end

  on_linux do
    url "https://github.com/roniel-rhack/rondo/releases/download/v#{version}/rondo-linux-amd64.tar.gz"
    sha256 "479acac715f5f14c06a02015099e7604eeca3097cbdb5ffa5f21a8712193a408"
  end

  def install
    bin.install "rondo"
  end

  test do
    assert_predicate bin/"rondo", :executable?
  end
end
