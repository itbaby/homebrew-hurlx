class Hurlx < Formula
  desc "Enhanced Hurl with import/export support for HTTP testing"
  homepage "https://github.com/itbaby/hurlx"
  version "1.0.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/itbaby/hurlx/releases/download/v#{version}/hurlx-darwin-arm64"
      sha256 "9b2190e69cc11959afd8dc77111fa9886bd312e1a1f739e72dcd5ee3341f1ddb"
    end
    on_intel do
      url "https://github.com/itbaby/hurlx/releases/download/v#{version}/hurlx-darwin-amd64"
      sha256 "f034251ac7e85203d80d9794023761a38e67bb8a2ecbee985a85bb59f1fbc2d3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/itbaby/hurlx/releases/download/v#{version}/hurlx-linux-amd64"
      sha256 "9171f4a855458e0754ab66849186ca7575c9ed4a9df845c22ff5b1e987bef0c8"
    end
  end

  def install
    bin.install "hurlx-#{OS.kernel_name.downcase}-#{Hardware::CPU.arch}" => "hurlx"
  end

  test do
    system "#{bin}/hurlx", "--help"
  end
end
