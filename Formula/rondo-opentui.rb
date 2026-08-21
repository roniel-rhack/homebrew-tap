class RondoOpentui < Formula
  desc "TUI task manager and journal built with OpenTUI and React"
  homepage "https://github.com/roniel-rhack/rondo-opentui"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roniel-rhack/rondo-opentui/releases/download/v#{version}/rondo-opentui-darwin-arm64.tar.gz"
      sha256 "6932bf4d41c7c1796add1488ce3f861beba4f74a01ade669c15dad27cd441f18"
    end
    on_intel do
      url "https://github.com/roniel-rhack/rondo-opentui/releases/download/v#{version}/rondo-opentui-darwin-amd64.tar.gz"
      sha256 "cd58bcc2fc99ea55df0e3c05f9902aaf42a2795789af1cf8219047aff050895d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/roniel-rhack/rondo-opentui/releases/download/v#{version}/rondo-opentui-linux-arm64.tar.gz"
      sha256 "5386f49fc2310d7cab0e9a5bf7c905d1aa10e42a4536b72e39fce381672a6217"
    end
    on_intel do
      url "https://github.com/roniel-rhack/rondo-opentui/releases/download/v#{version}/rondo-opentui-linux-amd64.tar.gz"
      sha256 "f6aa667cfc200cb5ac8282ec932e75b385ed6c0b4e55be823969fc7929f1eb65"
    end
  end

  def install
    bin.install "rondo-opentui"
  end

  test do
    assert_predicate bin/"rondo-opentui", :executable?
  end
end
