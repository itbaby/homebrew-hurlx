class Hurlx < Formula
  desc "Enhanced Hurl with import/export support for HTTP testing"
  homepage "https://github.com/itbaby/hurlx"
  version "1.0.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/itbaby/hurlx/releases/download/v#{version}/hurlx-#{version}-darwin-arm64"
      sha256 "1b6101ea8a6b8a5a96cb5b40b0a5a8a8bb9c08ae510960d27caa9ab6932671cb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/itbaby/hurlx/releases/download/v#{version}/hurlx-#{version}-linux-amd64"
      sha256 "452058e758cce786737fd37f54df47181eecefa12058c1f266233261e9bb1546"
    end
    on_arm do
      url "https://github.com/itbaby/hurlx/releases/download/v#{version}/hurlx-#{version}-linux-arm64"
      sha256 "272351fe38cdfd700e0afc3fbdda9e5df1f2d5ab5a9e8d66f05ca02dc2b2bb51"
    end
  end

  def install
    bin.install "hurlx-#{version}-#{OS.kernel_name.downcase}-#{Hardware::CPU.arch}" => "hurlx"
  end

  test do
    system "#{bin}/hurlx", "--help"
  end
end
