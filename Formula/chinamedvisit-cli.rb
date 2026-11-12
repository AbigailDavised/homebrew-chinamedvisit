class ChinamedvisitCli < Formula
  desc "China Top Tier-3A IMC Hospital Procedure Cost Estimator & Triage CLI"
  homepage "https://chinamedvisit.com"
  url "https://github.com/AbigailDavised/chinamedvisit-mcp/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "eae85cd1c0fd252fa5850767b050d201597612becd969ed4dce04029f7875d7b"
  license "MIT"

  depends_on "node"

  def install
    bin.install "bin/cli.js" => "chinamedvisit-cli"
    prefix.install Dir["*"]
  end

  test do
    system "#{bin}/chinamedvisit-cli", "--help"
  end
end
