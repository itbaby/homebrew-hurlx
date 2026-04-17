class Hurlx < Formula
  desc "Enhanced Hurl with import/export support for HTTP testing"
  homepage "https://github.com/itbaby/hurlx"
  version "1.0.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/itbaby/hurlx/releases/download/v#{version}/hurlx-darwin-arm64"
      sha256 "90a89061358298682a9459b3d3e2bc438db994a0d3f969ce6cac15a1ef5cd534"
    end
    on_intel do
      url "https://github.com/itbaby/hurlx/releases/download/v#{version}/hurlx-darwin-amd64"
      sha256 "ee832fafaa90a5e8dab9ee4250a473cd06adbf48da73c900c60be01b6f05fb2e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/itbaby/hurlx/releases/download/v#{version}/hurlx-linux-amd64"
      sha256 "ebfe066003bd3123ffd0e16afe57ef6871176ea794c8170b6b4a5b016124017c"
    end
  end

  def install
    bin.install "hurlx-#{OS.kernel_name.downcase}-#{Hardware::CPU.arch}" => "hurlx"
  end

  test do
    system "#{bin}/hurlx", "--help"
  end
end
