class RondoOpentui < Formula
  desc "TUI task manager and journal built with OpenTUI and React"
  homepage "https://github.com/roniel-rhack/rondo-opentui"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roniel-rhack/rondo-opentui/releases/download/v#{version}/rondo-opentui-darwin-arm64.tar.gz"
      sha256 "d285de6082e132d3b874f86c811f8d9a99cbd5a963065578ac01421a037fbde6"
    end
    on_intel do
      url "https://github.com/roniel-rhack/rondo-opentui/releases/download/v#{version}/rondo-opentui-darwin-amd64.tar.gz"
      sha256 "06f5eeb47caa4ed588d9277662176aa7437d630f2b2c13fc50a7172339ef0bff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/roniel-rhack/rondo-opentui/releases/download/v#{version}/rondo-opentui-linux-arm64.tar.gz"
      sha256 "ff2dba4d15b928b50b13657fe3b46bbbdc78cd74a1050a2734e4effa309204d5"
    end
    on_intel do
      url "https://github.com/roniel-rhack/rondo-opentui/releases/download/v#{version}/rondo-opentui-linux-amd64.tar.gz"
      sha256 "bcaf4332da13ceffe62f951d1639a0b8a7838a9edb953e667d98ba6e38a49ab8"
    end
  end

  def install
    bin.install "rondo-opentui"
  end

  test do
    assert_predicate bin/"rondo-opentui", :executable?
  end
end
