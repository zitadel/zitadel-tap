# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.ch"
  version "2.0.0-v2-alpha.3"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha.3/zitadel_2.0.0-v2-alpha.3_darwin_amd64"
      sha256 "d1cddb9ae8ba921cf45f6cf079a243273b1850dc63c9701166da0b65229915e8"

      def install
        bin.install "zitadel"
        bash_completion.install "completions/zitadel.bash" => "zitadel"
        zsh_completion.install "completions/zitadel.zsh" => "zitadel"
        fish_completion.install "completions/gorezitadelleaser.fish"
        man1.install "manpages/zitadel.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha.3/zitadel_2.0.0-v2-alpha.3_darwin_arm64"
      sha256 "55fc791b6d4829d513dbde79c1642e664af75ea32364981d71e142ff91ef1a24"

      def install
        bin.install "zitadel"
        bash_completion.install "completions/zitadel.bash" => "zitadel"
        zsh_completion.install "completions/zitadel.zsh" => "zitadel"
        fish_completion.install "completions/gorezitadelleaser.fish"
        man1.install "manpages/zitadel.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha.3/zitadel_2.0.0-v2-alpha.3_linux_amd64"
      sha256 "29a30751ffb03d074294cbe80ee376c0b3304dcd7125ed6025941708ff7941db"

      def install
        bin.install "zitadel"
        bash_completion.install "completions/zitadel.bash" => "zitadel"
        zsh_completion.install "completions/zitadel.zsh" => "zitadel"
        fish_completion.install "completions/gorezitadelleaser.fish"
        man1.install "manpages/zitadel.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha.3/zitadel_2.0.0-v2-alpha.3_linux_arm64"
      sha256 "df89101352d99c852747f9084e4f18274cb9dd445cbb34a96485df0471b2f398"

      def install
        bin.install "zitadel"
        bash_completion.install "completions/zitadel.bash" => "zitadel"
        zsh_completion.install "completions/zitadel.zsh" => "zitadel"
        fish_completion.install "completions/gorezitadelleaser.fish"
        man1.install "manpages/zitadel.1.gz"
      end
    end
  end

  depends_on "go" => :optional
  depends_on "git"

  test do
    system "#{bin}/zitadel -v"
  end
end
