# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ouravocado < Formula
  desc ""
  homepage "https://github.com/gkwa/ouravocado"
  version "0.0.7"

  on_macos do
    url "https://github.com/gkwa/ouravocado/releases/download/v0.0.7/ouravocado_Darwin_x86_64.tar.gz"
    sha256 "2601ece2eeb3d7208c76627b51457d937682c52e3bddbd6a87e3b7e65bb2ce81"

    def install
      bin.install "ouravocado"
    end

    on_arm do
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Ouravocado
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gkwa/ouravocado/releases/download/v0.0.7/ouravocado_Linux_x86_64.tar.gz"
        sha256 "f7afc2526faa3da98b167538cde03a1a2297a69ae97f28c31b73a058fbf0d7f4"

        def install
          bin.install "ouravocado"
        end
      end
    end
  end
end
