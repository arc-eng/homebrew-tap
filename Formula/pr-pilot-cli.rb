# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class PrPilotCli < Formula
  desc "PR Pilot CLI"
  homepage "https://github.com/PR-Pilot-AI/pr-pilot-cli"
  url "https://github.com/PR-Pilot-AI/pr-pilot-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d4c3b4e2e2b4e2e2b4e2e2b4e2e2b4e2e2b4e2e2b4e2e2b4e2e2b4e2e2b4e2e2"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"pr-pilot"
  end

  test do
    assert_match "PR Pilot CLI v0.1.0", shell_output("#{bin}/pr-pilot --version")
  end
end
