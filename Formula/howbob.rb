# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Howbob < Formula
  desc ""
  homepage "https://github.com/taylormonacelli/homebrew-tools"
  version "0.0.3"

  on_macos do
    url "https://github.com/gkwa/howbob/releases/download/v0.0.3/howbob_Darwin_x86_64.tar.gz"
    sha256 "3627f233ea45469a32f1afbf6247fec4ae1f689283285d9f9df7c3147940f908"

    def install
      bin.install "howbob"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Howbob
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gkwa/howbob/releases/download/v0.0.3/howbob_Linux_x86_64.tar.gz"
      sha256 "30b73162235ba0b9e15ada98ca37a3c9fa5927160d7892c0830fd5c1b9582fba"

      def install
        bin.install "howbob"
      end
    end
  end
end
