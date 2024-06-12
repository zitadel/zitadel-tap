# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.com"
  version "v2.54.2"
  license "Apache 2.0"

  depends_on "go" => :optional
  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.54.2/zitadel-darwin-arm64.tar.gz"
      sha256 "3b07a089a3910978a8fbd6c51888954366eafb2c6b32ec1c8516866d86784d50"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.54.2/zitadel-darwin-amd64.tar.gz"
      sha256 "8e9c9fff848f8854aebe1b9d652d03543616b8fe081a64267e5bef051a2dff62"

      def install
        bin.install "zitadel"
      end
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.54.2/zitadel-linux-arm64.tar.gz"
      sha256 "8a1098846bb353d1068c8011472c578c3d6b22e35bc70d11300ffae7f4a4649c"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.54.2/zitadel-linux-amd64.tar.gz"
      sha256 "cbffe56e37f53fcfab894b3c633af3f341ac8c073f7db8090af6fc9b95669a4a"

      def install
        bin.install "zitadel"
      end
    end
  end

  test do
    system "#{bin}/zitadel -v"
  end
end
  