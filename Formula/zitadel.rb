# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.com"
  version "2.0.0-v2-alpha-import.2"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha-import.2/zitadel_Darwin_x86_64.tar.gz"
      sha256 "d92c8be4408e2bc7852e52521ce7dc3281a9fe36d4e38cd0e0275b37df49d95f"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha-import.2/zitadel_Darwin_arm64.tar.gz"
      sha256 "e7cbd54f5f61546b7a38387ab76160fb9c9485cc6a2aa9ef1103fd403afd8c46"

      def install
        bin.install "zitadel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha-import.2/zitadel_Linux_x86_64.tar.gz"
      sha256 "9062ef43546b295a83034e167d95ab1d62584ff9fbdc6dffe3425e7025808ec0"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha-import.2/zitadel_Linux_arm64.tar.gz"
      sha256 "a59c8cd7524edbe09bc0cdfa04bed274e25d1f48ecd6ef5ef9f29d932ae04b89"

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
