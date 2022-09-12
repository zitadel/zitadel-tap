# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.com"
  version "2.5.0"
  license "Apache 2.0"

  depends_on "go" => :optional
  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.5.0/zitadel_Darwin_x86_64.tar.gz"
      sha256 "048dca013593d1270cc2396522659f1526159690538b100e3bb3978496b2adff"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.5.0/zitadel_Darwin_arm64.tar.gz"
      sha256 "14734c505aa7e083e1ef3292ec6c48113500df63e138cc838f08c0542f10852e"

      def install
        bin.install "zitadel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.5.0/zitadel_Linux_arm64.tar.gz"
      sha256 "213b34adc6313d9a06a98383ea73731c4d8371f46ac5e87d44cb13419f347d5a"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.5.0/zitadel_Linux_x86_64.tar.gz"
      sha256 "e092095548f116282e322a1a6af192969ae33b26e646518aaf1815f0542b586f"

      def install
        bin.install "zitadel"
      end
    end
  end

  test do
    system "#{bin}/zitadel -v"
  end
end
