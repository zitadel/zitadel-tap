# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.com"
  version "v2.62.0"
  license "Apache 2.0"

  depends_on "go" => :optional
  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.62.0/zitadel-darwin-arm64.tar.gz"
      sha256 "43038c574271bc01a19049466ee45ce2c34f8702bd101b05b48212c2369c3576"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.62.0/zitadel-darwin-amd64.tar.gz"
      sha256 "5336ad405c5b1ecf5a71d5dbdc6ac27a94cf39ea523d4b6a799c825021e69ac1"

      def install
        bin.install "zitadel"
      end
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.62.0/zitadel-linux-arm64.tar.gz"
      sha256 "29966ee4bda07f3579f78233d81323a08870a39b0ce3b3c85aa6266167135927"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.62.0/zitadel-linux-amd64.tar.gz"
      sha256 "81b816360e4d7a788a38714817639fa2949af558d2dabd18bf47182f8b5b7e26"

      def install
        bin.install "zitadel"
      end
    end
  end

  test do
    system "#{bin}/zitadel -v"
  end
end
  