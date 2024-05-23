# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bismarckianpchmortel < Formula
  desc ""
  homepage "https://github.com/gkwa/bismarckianpchmortel"
  version "0.0.1"

  on_macos do
    url "https://github.com/gkwa/bismarckianpchmortel/releases/download/v0.0.1/bismarckianpchmortel_Darwin_x86_64.tar.gz"
    sha256 "f1694ce5323b3a632f147460207473618f4784a6bb57e41fe47b08ab6c9fcefb"

    def install
      bin.install "bismarckianpchmortel"
    end

    on_arm do
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Bismarckianpchmortel
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gkwa/bismarckianpchmortel/releases/download/v0.0.1/bismarckianpchmortel_Linux_x86_64.tar.gz"
        sha256 "e4ab2a5e5e4566eef94c1353045c5a6cb8d6f1451775cc55cdda77d19514543b"

        def install
          bin.install "bismarckianpchmortel"
        end
      end
    end
  end
end