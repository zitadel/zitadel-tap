# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.com"
  version "2.0.0-v2-alpha.37"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha.37/zitadel_Darwin_arm64.tar.gz"
      sha256 "c44b0ac9032157ba7fc0ab2f197e9f5505582bda390dce5125c1de8473dc6b94"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha.37/zitadel_Darwin_x86_64.tar.gz"
      sha256 "5675a55d779c90190e39d7ee9acd6adbedc250a26b902556aeafdca6e8ddaa84"

      def install
        bin.install "zitadel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha.37/zitadel_Linux_x86_64.tar.gz"
      sha256 "8b08af7e402bae0700ec058a484739abc32dec4e0e32f8662e2bf971c9e179d3"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha.37/zitadel_Linux_arm64.tar.gz"
      sha256 "8655a8760d7146628e29fdccba2698de9bae6a0b8745466a87c6464740956362"

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
