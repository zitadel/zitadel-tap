# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.com"
  version "2.0.0-v2-alpha.31"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha.31/zitadel_Darwin_arm64.tar.gz"
      sha256 "482a7bc7efc9c4c606ae6ac2fbf927a6796db367b3bf83a593f68b3d1aae1f43"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha.31/zitadel_Darwin_x86_64.tar.gz"
      sha256 "a3540e0b07ccdebb6f75b7b81ed0ed1aeb7ee676cebe8de8416c81d538da2d5e"

      def install
        bin.install "zitadel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha.31/zitadel_Linux_arm64.tar.gz"
      sha256 "a0cd75242717ca290f995c123e21082b2b65fc949312fa9e6ddca5b758a365ab"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha.31/zitadel_Linux_x86_64.tar.gz"
      sha256 "8cb5a91988b5dbef7b40285320a990b9b5795f67c6bfd6e35d7bd257262f9f58"

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
