# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
    desc "Open source identity solution built for the container and cloud era"
    homepage "https://zitadel.com"
    version "v2.48.1"
    license "Apache 2.0"
  
    depends_on "go" => :optional
    depends_on "git"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/zitadel/zitadel/releases/download/v2.48.1/zitadel_darwin_arm64.tar.gz"
        sha256 "9b601e408ff91c8a3455be969903a340baecaa133a079cbcb9f9bc4bae045421"
  
        def install
          bin.install "zitadel"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/zitadel/zitadel/releases/download/v2.48.1/zitadel_darwin_x86_64.tar.gz"
        sha256 "b609fbaa22c22ae9c4d63fe4d76957cc9f27672099209d45c3719fd77b5c8d1b"
  
        def install
          bin.install "zitadel"
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/zitadel/zitadel/releases/download/v2.48.1/zitadel_linux_arm64.tar.gz"
        sha256 "5576ec2f1ca36b8138b149624c26c406129bf0ecb33d5c24eead366e0428cd2b"
  
        def install
          bin.install "zitadel"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/zitadel/zitadel/releases/download/v2.48.1/zitadel_linux_x86_64.tar.gz"
        sha256 "b82c4977b2c81aa827868aa51d619fea93c12ff639577e41603b67cb8a0b2989"
  
        def install
          bin.install "zitadel"
        end
      end
    end
  
    test do
      system "#{bin}/zitadel -v"
    end
  end
  