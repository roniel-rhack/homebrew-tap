class RondoRs < Formula
  desc "TUI task manager + journal (Rust rewrite of rondo)"
  homepage "https://github.com/roniel-rhack/rondo-rs"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roniel-rhack/rondo-rs/releases/download/v#{version}/rondo-rs-macos-arm64"
      sha256 "63a963ad6b0aeb4bdb1204bd963befc8026ad9258adc41c105f913cf03cd98f7"
    end
    on_intel do
      url "https://github.com/roniel-rhack/rondo-rs/releases/download/v#{version}/rondo-rs-macos-amd64"
      sha256 "154a181fa80ffbf4ce408d632ce4a1a66b0870c4d0d3993a12c6ef1185f2785d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/roniel-rhack/rondo-rs/releases/download/v#{version}/rondo-rs-linux-arm64"
      sha256 "1c2a8385246cc9cee2744126e11b5b1f6dc7600b333360026575fcaf25e9813c"
    end
    on_intel do
      url "https://github.com/roniel-rhack/rondo-rs/releases/download/v#{version}/rondo-rs-linux-amd64"
      sha256 "7dc5fa325d757df5552166940af0683f7efab150d5b74d7f8f9b1751043b3ba6"
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
