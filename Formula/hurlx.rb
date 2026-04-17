class Hurlx < Formula
  desc "Enhanced Hurl with import/export support for HTTP testing"
  homepage "https://github.com/itbaby/hurlx"
  version "1.0.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/itbaby/hurlx/releases/download/v#{version}/hurlx-darwin-arm64"
      sha256 "4b5701ec2788402e85777a9958eb31d49a847659ed68a16998f7348f7b1b888c"
    end
    on_intel do
      url "https://github.com/itbaby/hurlx/releases/download/v#{version}/hurlx-darwin-amd64"
      sha256 "e25c82e9a8aaea98e6a415be8905732f778c09d5ed18407f613302cfca0486c5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/itbaby/hurlx/releases/download/v#{version}/hurlx-linux-amd64"
      sha256 "ad410b6774ca02e433fbc94f702ebb9b2e2ff4f3d408bbfba27113f96acd7342"
    end
  end

  def install
    bin.install "hurlx-#{OS.kernel_name.downcase}-#{Hardware::CPU.arch}" => "hurlx"
  end

  test do
    system "#{bin}/hurlx", "--help"
  end
end
