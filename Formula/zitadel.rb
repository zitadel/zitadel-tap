# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.com"
  version "2.23.1"
  license "Apache 2.0"

  depends_on "go" => :optional
  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.23.1/zitadel_Darwin_arm64.tar.gz"
      sha256 "0f8d917894f4e82c5090e618a883e25549a0ed1427355e2438e6aca54cc3bdfb"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.23.1/zitadel_Darwin_x86_64.tar.gz"
      sha256 "c17d2f72c601b26010b2ea88cf67b2001ac63cff8524a073d870efeb54e3dcdd"

      def install
        bin.install "zitadel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.23.1/zitadel_Linux_arm64.tar.gz"
      sha256 "f45112537895280d39efbf32236ff274c627210e210c741ecc269b4c103ef76c"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.23.1/zitadel_Linux_x86_64.tar.gz"
      sha256 "13e997be5bd39bce6c262036338b1ae3abff0d423964d93631fc879aa2a7a5ed"

      def install
        bin.install "zitadel"
      end
    end
  end

  test do
    system "#{bin}/zitadel -v"
  end
end
