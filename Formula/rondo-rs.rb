class RondoRs < Formula
  desc "TUI task manager + journal (Rust rewrite of rondo)"
  homepage "https://github.com/roniel-rhack/rondo-rs"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roniel-rhack/rondo-rs/releases/download/v#{version}/rondo-rs-macos-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/roniel-rhack/rondo-rs/releases/download/v#{version}/rondo-rs-macos-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/roniel-rhack/rondo-rs/releases/download/v#{version}/rondo-rs-linux-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/roniel-rhack/rondo-rs/releases/download/v#{version}/rondo-rs-linux-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    binary = stable.url.split("/").last
    mv binary, "rondo-rs"
    bin.install "rondo-rs"
  end

  test do
    assert_predicate bin/"rondo-rs", :executable?
  end
end
