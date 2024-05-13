# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Anywest < Formula
  desc ""
  homepage "https://github.com/taylormonacelli/anywest"
  version "0.0.1"

  on_macos do
    url "https://github.com/gkwa/anywest/releases/download/v0.0.1/anywest_Darwin_x86_64.tar.gz"
    sha256 "2f42fa055cf834963e0e5e95e72b8d94be888025aeb3114928e7fd8f39fc419c"

    def install
      bin.install "anywest"
    end

    on_arm do
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Anywest
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gkwa/anywest/releases/download/v0.0.1/anywest_Linux_x86_64.tar.gz"
        sha256 "7b1676bdd85e5304ec7193e4dd44ed90596045bbcb908000adb4e974faff09c6"

        def install
          bin.install "anywest"
        end
      end
    end
  end
end