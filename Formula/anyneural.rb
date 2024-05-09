# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Anyneural < Formula
  desc ""
  homepage "https://github.com/taylormonacelli/anyneural"
  version "0.0.0"

  on_macos do
    url "https://github.com/gkwa/anyneural/releases/download/v0.0.0/anyneural_Darwin_x86_64.tar.gz"
    sha256 "c450cdaa85a7895f3b856dafa84a7101c9ccc52983c4646cf2688a6d3e3fa27b"

    def install
      bin.install "anyneural"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Anyneural
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gkwa/anyneural/releases/download/v0.0.0/anyneural_Linux_x86_64.tar.gz"
      sha256 "68abcfad296b4b95bdbe78aa0e10ae98c68ecc816f86cd4229e7976184918282"

      def install
        bin.install "anyneural"
      end
    end
  end
end
