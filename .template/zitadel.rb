# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
    desc "Open source identity solution built for the container and cloud era"
    homepage "https://zitadel.com"
    version "__VERSION__"
    license "Apache 2.0"
  
    depends_on "go" => :optional
    depends_on "git"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/zitadel/zitadel/releases/download/__VERSION__/zitadel_Darwin_arm64.tar.gz"
        sha256 "__DARWIN_ARM64_SUM__"
  
        def install
          bin.install "zitadel"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/zitadel/zitadel/releases/download/__VERSION__/zitadel_Darwin_x86_64.tar.gz"
        sha256 "__DARWIN_X86_64_SUM__"
  
        def install
          bin.install "zitadel"
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/zitadel/zitadel/releases/download/__VERSION__/zitadel_Linux_arm64.tar.gz"
        sha256 "__LINUX_ARM64_SUM__"
  
        def install
          bin.install "zitadel"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/zitadel/zitadel/releases/download/__VERSION__/zitadel_Linux_x86_64.tar.gz"
        sha256 "__LINUX_X86_64_SUM__"
  
        def install
          bin.install "zitadel"
        end
      end
    end
  
    test do
      system "#{bin}/zitadel -v"
    end
  end
  