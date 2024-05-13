# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Allparadigm < Formula
  desc ""
  homepage "https://github.com/taylormonacelli/allparadigm"
  version "0.0.4"

  on_macos do
    url "https://github.com/gkwa/allparadigm/releases/download/v0.0.4/allparadigm_Darwin_x86_64.tar.gz"
    sha256 "8a5bc29746eafc18bccbf6c055b3f642fa790731e9f23c0f962a1cb31e85d1f5"

    def install
      bin.install "allparadigm"
    end

    on_arm do
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Allparadigm
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gkwa/allparadigm/releases/download/v0.0.4/allparadigm_Linux_x86_64.tar.gz"
        sha256 "163bdb2b27c06b7d3263bc3e12f71ebdfac3796e054f93607fab2787058c0943"

        def install
          bin.install "allparadigm"
        end
      end
    end
  end
end