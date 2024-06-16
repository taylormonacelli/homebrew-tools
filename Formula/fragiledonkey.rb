# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fragiledonkey < Formula
  desc ""
  homepage "https://github.com/taylormonacelli/homebrew-tools"
  version "0.0.14"

  on_macos do
    url "https://github.com/gkwa/fragiledonkey/releases/download/v0.0.14/fragiledonkey_Darwin_x86_64.tar.gz"
    sha256 "844aab00ef7e3d47624eda23a373f5cbb0919b49f2a42c5d4f808fb1976f93c6"

    def install
      bin.install "fragiledonkey"
    end

    on_arm do
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Fragiledonkey
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gkwa/fragiledonkey/releases/download/v0.0.14/fragiledonkey_Linux_x86_64.tar.gz"
        sha256 "584fea1b63e7319b4b2e28f6098c7f53af6b69d566a2a400fa621ca9f32068c6"

        def install
          bin.install "fragiledonkey"
        end
      end
    end
  end
end
