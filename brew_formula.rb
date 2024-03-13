class BrewFormula < Formula
  desc "Guide you through a breathing exercise with customizable iterations and patterns"
  homepage "https://github.com/Yamilquery/homebrew-breathe"
  url "https://github.com/Yamilquery/homebrew-breathe/archive/v1.0.2.tar.gz"
  sha256 "eaca97a2aaad322336748fc8f732e80e6b7945f96b62a407ee4138fcfff28347"
  license "MIT"

  def install
    bin.install "breathe.sh" => "breathe"
  end

  test do
    system "#{bin}/breathe", "--help"
  end
end