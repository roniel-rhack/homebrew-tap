class RondoOpentui < Formula
  desc "TUI task manager and journal built with OpenTUI and React"
  homepage "https://github.com/roniel-rhack/rondo-opentui"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roniel-rhack/rondo-opentui/releases/download/v#{version}/rondo-opentui-darwin-arm64.tar.gz"
      sha256 "2bf846be7fe9c159e81c376b93b927c9ca2938cae3fb2890915a1335a6988758"
    end
    on_intel do
      url "https://github.com/roniel-rhack/rondo-opentui/releases/download/v#{version}/rondo-opentui-darwin-amd64.tar.gz"
      sha256 "ad3f07bfd2c481e08e4739df662f5101641050344b8c2676f657cfb9f63f6c67"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/roniel-rhack/rondo-opentui/releases/download/v#{version}/rondo-opentui-linux-arm64.tar.gz"
      sha256 "573c307b300b04ddacf49471ae860dadd562212557c48468e000e50770b17759"
    end
    on_intel do
      url "https://github.com/roniel-rhack/rondo-opentui/releases/download/v#{version}/rondo-opentui-linux-amd64.tar.gz"
      sha256 "2495264a9eb0f7c464d3613c6722bd5b8f2131073d98d2567a5425d4d7302b06"
    end
  end

  def install
    bin.install "rondo-opentui"
  end

  test do
    assert_predicate bin/"rondo-opentui", :executable?
  end
end
