class BrewFormula < Formula
  desc "Guide you through a breathing exercise with customizable iterations and patterns"
  homepage "https://github.com/Yamilquery/breathe"
  url "https://github.com/Yamilquery/breathe/archive/v1.0.0.tar.gz"
  sha256 "1c05fb33985098de1b95350c94d3d3216d6600b18a407c28037abfed2a9a4968"
  license "MIT"

  def install
    bin.install "breathe.sh" => "breathe"
  end

  test do
    system "#{bin}/breathe", "--help"
  end
end