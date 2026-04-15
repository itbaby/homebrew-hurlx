class Hurlx < Formula
  desc "Enhanced Hurl with import/export support for HTTP testing"
  homepage "https://github.com/itbaby/hurlx"
  version "1.0.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/itbaby/hurlx/releases/download/v#{version}/hurlx-#{version}-darwin-arm64"
      sha256 "7772eed18bd88ad50a6f8e248622978310ab919ef75853fe45cb7a645363ebb1"
    end
    on_intel do
      url "https://github.com/itbaby/hurlx/releases/download/v#{version}/hurlx-#{version}-darwin-amd64"
      sha256 "51dd6a4f9fe72b884b2409aac8ff8c5388be9f811a8ea0b18c46fd224e4d8db2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/itbaby/hurlx/releases/download/v#{version}/hurlx-#{version}-linux-amd64"
      sha256 "80cc277501c7a0ed4fd577d546937cf7e6c43208e1b286e8a5198106f953e073"
    end
  end

  def install
    bin.install "hurlx-#{version}-#{OS.kernel_name.downcase}-#{Hardware::CPU.arch}" => "hurlx"
  end

  test do
    system "#{bin}/hurlx", "--help"
  end
end
