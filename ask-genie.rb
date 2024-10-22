# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AskGenie < Formula
  desc "CLI app to suggest prompted commands"
  homepage "https://github.com/the-Jinxist/cmd_genie"
  version "0.4.9"

  on_macos do
    on_intel do
      url "https://github.com/the-Jinxist/cmd_genie/releases/download/v0.4.9/cmd_genie_Darwin_x86_64.tar.gz"
      sha256 "17a4edf011e4d600dc47522b6157774bf247a64aeaed4479b76ebb20b8bd8b71"

      def install
        bin.install "cmd_genie"
      end
    end
    on_arm do
      url "https://github.com/the-Jinxist/cmd_genie/releases/download/v0.4.9/cmd_genie_Darwin_arm64.tar.gz"
      sha256 "23a6626dc0223e4bf005da8241326d4cf369f710859a879bfb996787b2fc1555"

      def install
        bin.install "cmd_genie"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/the-Jinxist/cmd_genie/releases/download/v0.4.9/cmd_genie_Linux_x86_64.tar.gz"
        sha256 "3c03e869e50c01c4bacf7f106119af64822b58ccf80432b640b2d4ead8e5cfd4"

        def install
          bin.install "cmd_genie"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/the-Jinxist/cmd_genie/releases/download/v0.4.9/cmd_genie_Linux_arm64.tar.gz"
        sha256 "75034b4566b222974ce122cfdfb26c574c3a27f91fdc79a41f8f0a42a071e1ac"

        def install
          bin.install "cmd_genie"
        end
      end
    end
  end

  def post_install
    cmd_genie --help
  end
end
