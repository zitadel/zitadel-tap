# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.com"
  version "2.21.3"
  license "Apache 2.0"

  depends_on "go" => :optional
  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.21.3/zitadel_Darwin_arm64.tar.gz"
      sha256 "26cd3382857c5e457cacf3e1f4b33cc7538b34752e0664b57df44ca38c78158d"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.21.3/zitadel_Darwin_x86_64.tar.gz"
      sha256 "c1f85dfcc41c664cdf45f67b9b8f80e0b755b9a17dad4d92a4d2b9f6b985bf1c"

      def install
        bin.install "zitadel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.21.3/zitadel_Linux_arm64.tar.gz"
      sha256 "ced5a62d7bc9ddd229d99e78a00a1e97d39c0126f08e01b15ed2ee84f85641ca"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.21.3/zitadel_Linux_x86_64.tar.gz"
      sha256 "616e4c0057fb5298cb8d0687c3349be9a5a27e18a4328bcf2e91932fcb12e81c"

      def install
        bin.install "zitadel"
      end
    end
  end

  test do
    system "#{bin}/zitadel -v"
  end
end
