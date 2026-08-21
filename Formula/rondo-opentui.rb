class RondoOpentui < Formula
  desc "TUI task manager and journal built with OpenTUI and React"
  homepage "https://github.com/roniel-rhack/rondo-opentui"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roniel-rhack/rondo-opentui/releases/download/v#{version}/rondo-opentui-darwin-arm64.tar.gz"
      sha256 "b121f9dbf222b5f6bf4337fe8104dc6e8045b73fe3bcb60945fd12f46cfe1d55"
    end
    on_intel do
      url "https://github.com/roniel-rhack/rondo-opentui/releases/download/v#{version}/rondo-opentui-darwin-amd64.tar.gz"
      sha256 "755792f30b54f5d2245f8e22e32ac2d2385ed072a5deb4f4e2547641a0b79762"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/roniel-rhack/rondo-opentui/releases/download/v#{version}/rondo-opentui-linux-arm64.tar.gz"
      sha256 "a24e0d8590821517cb456c8dcc72533406b9d32141d39a555f4fb87e51ecfb48"
    end
    on_intel do
      url "https://github.com/roniel-rhack/rondo-opentui/releases/download/v#{version}/rondo-opentui-linux-amd64.tar.gz"
      sha256 "4bcad731a1785ac7342ead372d48d0baa48ee16dfa7d49ab5ee969098e0284e6"
    end
  end

  def install
    bin.install "rondo-opentui"
  end

  test do
    assert_predicate bin/"rondo-opentui", :executable?
  end
end
