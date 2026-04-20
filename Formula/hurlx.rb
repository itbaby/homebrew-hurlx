class Hurlx < Formula
  desc "Enhanced Hurl with import/export support for HTTP testing"
  homepage "https://github.com/itbaby/hurlx"
  version "1.0.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/itbaby/hurlx/releases/download/v#{version}/hurlx-#{version}-darwin-arm64"
      sha256 "7ad4dc7e5b4d7493c79aa01a0e1c77ae46016920dd0df6ff78bbe5bc04d529f5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/itbaby/hurlx/releases/download/v#{version}/hurlx-#{version}-linux-amd64"
      sha256 "99f10c59434e95d2da5e19faaf0d0931540be67f6381774cbb6ed2df3efbb185"
    end
    on_arm do
      url "https://github.com/itbaby/hurlx/releases/download/v#{version}/hurlx-#{version}-linux-arm64"
      sha256 "1a7e18c2d50606379ca5ccb8e28aca0c1abec8d297d96f08aa539404223ab436"
    end
  end

  def install
    bin.install "hurlx-#{version}-#{OS.kernel_name.downcase}-#{Hardware::CPU.arch}" => "hurlx"
  end

  test do
    system "#{bin}/hurlx", "--help"
  end
end
