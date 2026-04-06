class Envi < Formula
  desc "A TUI for managing .env files — diff, scan, edit, and validate"
  homepage "https://github.com/roniel-rhack/envi"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roniel-rhack/envi/releases/download/v#{version}/envi-macos-arm64"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/roniel-rhack/envi/releases/download/v#{version}/envi-macos-amd64"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/roniel-rhack/envi/releases/download/v#{version}/envi-linux-arm64"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/roniel-rhack/envi/releases/download/v#{version}/envi-linux-amd64"
      sha256 "PLACEHOLDER"
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
