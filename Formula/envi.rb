class Envi < Formula
  desc "A TUI for managing .env files — diff, scan, edit, and validate"
  homepage "https://github.com/roniel-rhack/envi"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roniel-rhack/envi/releases/download/v#{version}/envi-macos-arm64"
      sha256 "a684b9466415f187bd1a12b2eb3951dfbd30e29ee7c92b2c1df750332f13be09"
    end
    on_intel do
      url "https://github.com/roniel-rhack/envi/releases/download/v#{version}/envi-macos-amd64"
      sha256 "c35111e979506129fd4725961e9572ad737a8d5df9b58767be8c0b5eefda9cf5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/roniel-rhack/envi/releases/download/v#{version}/envi-linux-arm64"
      sha256 "630f2aaf49d8ef9f9cb000939e35a794eef09c6f2e7233cdce20c38482bda932"
    end
    on_intel do
      url "https://github.com/roniel-rhack/envi/releases/download/v#{version}/envi-linux-amd64"
      sha256 "e184326704267d2c8ff83a24880c8a432a78524d95cc4f91f8c0cc39ff33754b"
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
