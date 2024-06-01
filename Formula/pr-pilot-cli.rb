class PrPilotCli < Formula
  include Language::Python::Virtualenv

  desc "CLI for PR Pilot"
  homepage "https://www.pr-pilot.ai"
  url "https://files.pythonhosted.org/packages/62/a0/0f696d58b0b53c1a97610c9f21262bb6907159c1ae1ed7b470e02d43356c/pr_pilot_cli-1.4.1.tar.gz"
  sha256 "bb798bc833c49b88aea2aed4c66ae8782db5096b62f9cd94010c0b9e330366ff"

  depends_on "python@3.10"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"pilot", "--help"
  end
end
