class Hurlx < Formula
  desc "Enhanced Hurl with import/export support for HTTP testing"
  homepage "https://github.com/itbaby/hurlx"
  version "1.0.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/itbaby/hurlx/releases/download/v#{version}/hurlx-#{version}-darwin-arm64"
      sha256 "0fadf3b31cdc825476abf87aa2e41a9db167ac32a5a27c1ac9d842f03fc0b4ca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/itbaby/hurlx/releases/download/v#{version}/hurlx-#{version}-linux-amd64"
      sha256 "0c1889c00db0c151aa0c3ae860205e5797fa51beff536abc6298c3f06e2446d2"
    end
    on_arm do
      url "https://github.com/itbaby/hurlx/releases/download/v#{version}/hurlx-#{version}-linux-arm64"
      sha256 "d14eb0c6595e3f603554788f772ee58973b8a5712f55a9bb04d78d13e5ad1eef"
    end
  end

  def install
    bin.install "hurlx-#{version}-#{OS.kernel_name.downcase}-#{Hardware::CPU.arch}" => "hurlx"
  end

  test do
    system "#{bin}/hurlx", "--help"
  end
end
