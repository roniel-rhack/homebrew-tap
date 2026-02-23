class Rondo < Formula
  desc "A TUI todo and journal app for the terminal"
  homepage "https://github.com/roniel-rhack/rondo"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roniel-rhack/rondo/releases/download/v#{version}/rondo-darwin-arm64.tar.gz"
      sha256 "27cec2cc0e1cdcdfeb137d21ddddcfed9762baa3b8d14a4368ecaa63f76e1007"
    end
    on_intel do
      url "https://github.com/roniel-rhack/rondo/releases/download/v#{version}/rondo-darwin-amd64.tar.gz"
      sha256 "a9fc4cd895a50b134f522834ad479a1dd2264042dda4451bc42291f4102f284f"
    end
  end

  on_linux do
    url "https://github.com/roniel-rhack/rondo/releases/download/v#{version}/rondo-linux-amd64.tar.gz"
    sha256 "78d3680e4b54cc9de0a1e9609eaeedc4af34da291a3c7e47d9bd6c28baf71d40"
  end

  def install
    bin.install "rondo"
  end

  test do
    assert_predicate bin/"rondo", :executable?
  end
end
