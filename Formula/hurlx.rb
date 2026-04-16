class Hurlx < Formula
  desc "Enhanced Hurl with import/export support for HTTP testing"
  homepage "https://github.com/itbaby/hurlx"
  version "1.0.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/itbaby/hurlx/releases/download/v#{version}/hurlx-darwin-arm64"
      sha256 "0e017e3d58de8ba2c8a874cb7510f702cbeda2e33208247bf7d188a33c92bf70"
    end
    on_intel do
      url "https://github.com/itbaby/hurlx/releases/download/v#{version}/hurlx-darwin-amd64"
      sha256 "d04fe6817b89ef4e433a607d32be6cba80264d2194088622a86bd0a9ccffbaf0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/itbaby/hurlx/releases/download/v#{version}/hurlx-linux-amd64"
      sha256 "83ca4d6f19b5b4b7d89a4068cd9e603215f6728bb6619e0f767623b1f9709249"
    end
  end

  def install
    bin.install "hurlx-#{OS.kernel_name.downcase}-#{Hardware::CPU.arch}" => "hurlx"
  end

  test do
    system "#{bin}/hurlx", "--help"
  end
end
