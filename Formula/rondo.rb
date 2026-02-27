class Rondo < Formula
  desc "A TUI todo and journal app for the terminal"
  homepage "https://github.com/roniel-rhack/rondo"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roniel-rhack/rondo/releases/download/v#{version}/rondo-darwin-arm64.tar.gz"
      sha256 "87643219b7986ab9822816c32a61b1fc1d6d419af511d43619081d5894afca75"
    end
    on_intel do
      url "https://github.com/roniel-rhack/rondo/releases/download/v#{version}/rondo-darwin-amd64.tar.gz"
      sha256 "9058c4630013db775684186fd4adb19c088061c2968b749be7e20752033b6508"
    end
  end

  on_linux do
    url "https://github.com/roniel-rhack/rondo/releases/download/v#{version}/rondo-linux-amd64.tar.gz"
    sha256 "a0163af9be22487ab917c69c9357457b42b02746c7135699a61ef2d8565bd885"
  end

  def install
    bin.install "rondo"
  end

  test do
    assert_predicate bin/"rondo", :executable?
  end
end
