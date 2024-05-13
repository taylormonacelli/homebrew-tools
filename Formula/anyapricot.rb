# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Anyapricot < Formula
  desc ""
  homepage "https://github.com/taylormonacelli/anyapricot"
  version "0.0.1"

  on_macos do
    url "https://github.com/gkwa/anyapricot/releases/download/v0.0.1/anyapricot_Darwin_x86_64.tar.gz"
    sha256 "2a35d6e03195469e8857eca59e5dd549f780d06e5dd61e34b7977c738d082dac"

    def install
      bin.install "anyapricot"
    end

    on_arm do
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Anyapricot
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gkwa/anyapricot/releases/download/v0.0.1/anyapricot_Linux_x86_64.tar.gz"
        sha256 "72a34285565a5666bff8d74ff3adab7dfb16bef9d5bc50827fb8098ed51782c2"

        def install
          bin.install "anyapricot"
        end
      end
    end
  end
end