# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hercow < Formula
  desc ""
  homepage "https://github.com/taylormonacelli/homebrew-tools"
  version "0.0.12"

  on_macos do
    url "https://github.com/gkwa/hercow/releases/download/v0.0.12/hercow_Darwin_x86_64.tar.gz"
    sha256 "952d6de6bb7954ec69bf8b0fba52e0f5dd4ca029016d9c2b9792e20a6d25638e"

    def install
      bin.install "hercow"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Hercow
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gkwa/hercow/releases/download/v0.0.12/hercow_Linux_x86_64.tar.gz"
      sha256 "dc5e0bf8211e918dc8c1f235c0854161afabda00b21c19e53a26310e1898e964"

      def install
        bin.install "hercow"
      end
    end
  end
end
