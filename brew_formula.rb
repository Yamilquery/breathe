class BrewFormula < Formula
  desc "Guide you through a breathing exercise with customizable iterations and patterns"
  homepage "https://github.com/Yamilquery/homebrew-breathe"
  url "https://github.com/Yamilquery/homebrew-breathe/archive/v1.0.2.tar.gz"
  sha256 "793ff775d1d5f889ac82fa02e44254a2bb26d9df53ac562dc119eaf77cd42f9f"
  license "MIT"

  def install
    bin.install "breathe.sh" => "breathe"
  end

  test do
    system "#{bin}/breathe", "--help"
  end
end