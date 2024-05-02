# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Itmetrics < Formula
  desc ""
  homepage "https://github.com/taylormonacelli/homebrew-tools"
  version "0.0.3"

  on_macos do
    url "https://github.com/gkwa/itmetrics/releases/download/v0.0.3/itmetrics_Darwin_x86_64.tar.gz"
    sha256 "5f847cefef391b5a3fe545bee01e29a371c4fd5d7894604e9f1ecd3510522c94"

    def install
      bin.install "itmetrics"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Itmetrics
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gkwa/itmetrics/releases/download/v0.0.3/itmetrics_Linux_x86_64.tar.gz"
      sha256 "b55bc941f9a1616ebb39b4d880546d26e955703e954ee55373feffc3e6217aef"

      def install
        bin.install "itmetrics"
      end
    end
  end
end
