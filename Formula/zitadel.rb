# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.com"
  version "2.0.0-v2-alpha.43"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha.43/zitadel_Darwin_arm64.tar.gz"
      sha256 "ea8d2f3ca0a5d5b93163346c922450d7671bdb568cd5bd3f97c20010b1266f14"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha.43/zitadel_Darwin_x86_64.tar.gz"
      sha256 "193a07deb2c5d5d32025280f7f96dd92d0dcf33012638cfd9decb9b2757c82ef"

      def install
        bin.install "zitadel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha.43/zitadel_Linux_arm64.tar.gz"
      sha256 "963a076993f03c9dd3dfd3d10733d67e62af6dfc21dcd65c390b573073c8f854"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha.43/zitadel_Linux_x86_64.tar.gz"
      sha256 "fba0a0974b81feb6de76df3b972a88eb76ad66634a109972dfc8c729e537652d"

      def install
        bin.install "zitadel"
      end
    end
  end

  depends_on "go" => :optional
  depends_on "git"

  test do
    system "#{bin}/zitadel -v"
  end
end
