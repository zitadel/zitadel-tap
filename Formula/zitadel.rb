# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.com"
  version "v2.62.1"
  license "Apache 2.0"

  depends_on "go" => :optional
  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.62.1/zitadel-darwin-arm64.tar.gz"
      sha256 "e18806a4661fa94fc005106d64a506ac58e9a2eb64b9a92e1363c7869850c3a0"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.62.1/zitadel-darwin-amd64.tar.gz"
      sha256 "589f81846f6316265f72da6c10cc4d27aa8ac8a8a91569c99e8bf18467c22633"

      def install
        bin.install "zitadel"
      end
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.62.1/zitadel-linux-arm64.tar.gz"
      sha256 "45adc057e5ff5ec84080921d3ea18ac6e34380a99e3f3085144ce2549a543f76"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.62.1/zitadel-linux-amd64.tar.gz"
      sha256 "1eac6cad137669239dc1d9a70ccc444a5c7c21cbcbef520c347a50b44808d5a5"

      def install
        bin.install "zitadel"
      end
    end
  end

  test do
    system "#{bin}/zitadel -v"
  end
end
  