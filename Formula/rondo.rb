class Rondo < Formula
  desc "A TUI todo and journal app for the terminal"
  homepage "https://github.com/roniel-rhack/rondo"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roniel-rhack/rondo/releases/download/v#{version}/rondo-darwin-arm64.tar.gz"
      sha256 "40dbe0e5b47e45aac4d95f52b628cb3b57f8f564962ed215d88957f1dc63d563"
    end
    on_intel do
      url "https://github.com/roniel-rhack/rondo/releases/download/v#{version}/rondo-darwin-amd64.tar.gz"
      sha256 "003e7af4240b62284d1b00bfae4070da31351e52fc06cd72869d7f3c9be86fe0"
    end
  end

  on_linux do
    url "https://github.com/roniel-rhack/rondo/releases/download/v#{version}/rondo-linux-amd64.tar.gz"
    sha256 "2a1630cdef0b657f50095633ac179b6fe72071679f80bbe84acda01f29dde80f"
  end

  def install
    bin.install "rondo"
  end

  test do
    assert_predicate bin/"rondo", :executable?
  end
end
