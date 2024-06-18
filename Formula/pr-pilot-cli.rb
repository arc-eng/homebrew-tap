# typed: false
# frozen_string_literal: true

class PrPilotCli < Formula
  desc "PR Pilot CLI"
  homepage "https://github.com/PR-Pilot-AI/pr-pilot-cli"
  url "https://github.com/PR-Pilot-AI/pr-pilot-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d4c3b4e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2"
  license "MIT"

  def install
    bin.install "pr-pilot"
  end

  test do
    system "#{bin}/pr-pilot", "--version"
  end
end
