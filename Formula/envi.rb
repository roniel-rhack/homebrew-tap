class Envi < Formula
  desc "A TUI for managing .env files — diff, scan, edit, and validate"
  homepage "https://github.com/roniel-rhack/envi"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roniel-rhack/envi/releases/download/v#{version}/envi-macos-arm64"
      sha256 "9b98c70ecc6d329e2b515b227bd169a13719eb4f156f73cc37806d7a6f27c0e1"
    end
    on_intel do
      url "https://github.com/roniel-rhack/envi/releases/download/v#{version}/envi-macos-amd64"
      sha256 "5549b51ec17afb9e29ab34f277db18618a6488a673318ce3f23e46527c98f5be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/roniel-rhack/envi/releases/download/v#{version}/envi-linux-arm64"
      sha256 "76dec04730c7f9ab879da35887b2d4cefe419392ed392425ed2b5f3450a37ddf"
    end
    on_intel do
      url "https://github.com/roniel-rhack/envi/releases/download/v#{version}/envi-linux-amd64"
      sha256 "e32376fc888f51b7b88a946178ca90e5b6e95a8f2d7eba32d9bc6692e51cd01a"
    end
  end

  def install
    binary = stable.url.split("/").last
    mv binary, "envi"
    bin.install "envi"
  end

  test do
    assert_predicate bin/"envi", :executable?
  end
end
