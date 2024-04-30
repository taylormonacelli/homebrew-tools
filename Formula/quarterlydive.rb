# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Quarterlydive < Formula
  desc ""
  homepage "https://github.com/taylormonacelli/homebrew-tools"
  version "0.0.3"

  on_macos do
    url "https://github.com/gkwa/quarterlydive/releases/download/v0.0.3/quarterlydive_Darwin_x86_64.tar.gz"
    sha256 "7a6002ba8d13965193b844aea0c1a57790f11a11c92dc5b0aa952299c0f7706b"

    def install
      bin.install "quarterlydive"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Quarterlydive
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gkwa/quarterlydive/releases/download/v0.0.3/quarterlydive_Linux_x86_64.tar.gz"
      sha256 "a1e5f7ea5d691489afdf544f4d4f72633152d8b410d86efb6d318af10227b0a9"

      def install
        bin.install "quarterlydive"
      end
    end
  end
end