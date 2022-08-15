# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.com"
  version "2.1.1"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.1.1/zitadel_Darwin_arm64.tar.gz"
      sha256 "be67854b13ae89c162e5bc3d631c7f5fa6e02fa57da164b7a4e15736b41b7d18"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.1.1/zitadel_Darwin_x86_64.tar.gz"
      sha256 "5f7aa65e0dcd1df3224066f91f466a7c06408fd341c5fb6c2d4070963acbbba3"

      def install
        bin.install "zitadel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.1.1/zitadel_Linux_x86_64.tar.gz"
      sha256 "5fe7f1f4a5f8ac953bd1ce352ef4d30bc9a4c08180376a12cd6c0501d7b0a91f"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.1.1/zitadel_Linux_arm64.tar.gz"
      sha256 "d5516955879b6c1ff083b3423022270fc74e0796d1c25cbf70dd0c8860885223"

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
