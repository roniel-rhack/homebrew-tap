class RondoOpentui < Formula
  desc "TUI task manager and journal built with OpenTUI and React"
  homepage "https://github.com/roniel-rhack/rondo-opentui"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roniel-rhack/rondo-opentui/releases/download/v#{version}/rondo-opentui-darwin-arm64.tar.gz"
      sha256 "b0c1eb5059011f0232452a2a4dd3a206fa6c19219258cac929e425dc034d7644"
    end
    on_intel do
      url "https://github.com/roniel-rhack/rondo-opentui/releases/download/v#{version}/rondo-opentui-darwin-amd64.tar.gz"
      sha256 "6a56bbb8b4a3f8990dfbff1619a3892dd67bd553e1b3ee3381315c7d7858dcb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/roniel-rhack/rondo-opentui/releases/download/v#{version}/rondo-opentui-linux-arm64.tar.gz"
      sha256 "e1dd74c5d382b54c6fabb3f032c1e8ebcbb61eab585249841bedca818a60a517"
    end
    on_intel do
      url "https://github.com/roniel-rhack/rondo-opentui/releases/download/v#{version}/rondo-opentui-linux-amd64.tar.gz"
      sha256 "963a498e90f73fdf47e0c802ec598fa86e13a895c432a18ef20d82a6be6104ec"
    end
  end

  def install
    bin.install "rondo-opentui"
  end

  test do
    assert_predicate bin/"rondo-opentui", :executable?
  end
end
