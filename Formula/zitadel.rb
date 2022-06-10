# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.com"
  version "2.0.0-v2-alpha.23"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha.23/zitadel_Darwin_x86_64.tar.gz"
      sha256 "a7ae1279589b2d34ba0952a094bc0535118c41268ceecfa16d0a7fd432ab0e38"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha.23/zitadel_Darwin_arm64.tar.gz"
      sha256 "ae37937390a2846a9fd6cf2bebe07861add4e87c09995215bf8089b75573f535"

      def install
        bin.install "zitadel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha.23/zitadel_Linux_x86_64.tar.gz"
      sha256 "4891d15c1e55168900ae20819764451c967a865a2f07a97c2c303555686a563f"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha.23/zitadel_Linux_arm64.tar.gz"
      sha256 "3ac4a911f3f3ff71a5049709a872235ae3c9933be9440c718e6526a7dc2bc220"

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
