# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mylime < Formula
  desc ""
  homepage "https://github.com/taylormonacelli/homebrew-tools"
  version "0.0.3"

  on_macos do
    url "https://github.com/gkwa/mylime/releases/download/v0.0.3/mylime_Darwin_x86_64.tar.gz"
    sha256 "6b0ee9b85e2fd34c8922d8469e9b16309db27ac7e8bf05250aa981d5dfe3048b"

    def install
      bin.install "mylime"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Mylime
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gkwa/mylime/releases/download/v0.0.3/mylime_Linux_x86_64.tar.gz"
      sha256 "6e6e56f063beed4b2b3c30d61c6f6b1c1f476fc77ea61059284f61c71e17aaa1"

      def install
        bin.install "mylime"
      end
    end
  end
end
