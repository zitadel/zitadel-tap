# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.com"
  version "v2.55.2"
  license "Apache 2.0"

  depends_on "go" => :optional
  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.55.2/zitadel-darwin-arm64.tar.gz"
      sha256 "b394325a43a97fbc5bea6e2b941af297a8008c63aea37d23d23e7999f283f6f8"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.55.2/zitadel-darwin-amd64.tar.gz"
      sha256 "1c3a415224ce4d9ed1963f8544772b28045c1b1dad163288a4afa009e3d911a4"

      def install
        bin.install "zitadel"
      end
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.55.2/zitadel-linux-arm64.tar.gz"
      sha256 "302f24661ea2012c9943ba2f13d1dd63c78430bac3e55e06f2cb4ce5ee14288e"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.55.2/zitadel-linux-amd64.tar.gz"
      sha256 "cbdc5a637c527404ea874bb30d5bbbd9f3e468cc447d59cfd816487fe46e4891"

      def install
        bin.install "zitadel"
      end
    end
  end

  test do
    system "#{bin}/zitadel -v"
  end
end
  