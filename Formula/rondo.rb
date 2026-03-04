class Rondo < Formula
  desc "A TUI todo and journal app for the terminal"
  homepage "https://github.com/roniel-rhack/rondo"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roniel-rhack/rondo/releases/download/v#{version}/rondo-darwin-arm64.tar.gz"
      sha256 "c07ff032f5d13389112033c99055c34b945319568421b0f484e4f7abd96ceb26"
    end
    on_intel do
      url "https://github.com/roniel-rhack/rondo/releases/download/v#{version}/rondo-darwin-amd64.tar.gz"
      sha256 "14d36debf786423764afe1aea145fa56255b4a14b0cb5328e8bb49cf29307c99"
    end
  end

  on_linux do
    url "https://github.com/roniel-rhack/rondo/releases/download/v#{version}/rondo-linux-amd64.tar.gz"
    sha256 "d94f3c04beacee0aedf046bbf090d95d3714afbba7a9d44f8c5472a9461a08f8"
  end

  def install
    bin.install "rondo"
  end

  test do
    assert_predicate bin/"rondo", :executable?
  end
end
