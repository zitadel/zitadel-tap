# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.com"
  version "2.2.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.2.0/zitadel_Darwin_arm64.tar.gz"
      sha256 "d9a83809fc2e7f5e50129817f5ba85af5dc595f480eb7b3c963a722dc16919e3"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.2.0/zitadel_Darwin_x86_64.tar.gz"
      sha256 "4b99c6e59eb92d1c3c640dbd2f92e5c72437f9ac07e31ad0da1cc6dd1022c8ff"

      def install
        bin.install "zitadel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.2.0/zitadel_Linux_x86_64.tar.gz"
      sha256 "9a48f275f02b7f42e1d496f80b1f8a6131920e7bfa508596e8881f1d60333795"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.2.0/zitadel_Linux_arm64.tar.gz"
      sha256 "35d0f93467771cf9c849556655cc12af3115b32b946dbd2faf9a5f011f5c46db"

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
