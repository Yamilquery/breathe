class Breathe < Formula
  desc "Guide you through a breathing exercise with customizable iterations and patterns"
  homepage "https://github.com/Yamilquery/breathe"
  url "https://github.com/Yamilquery/breathe/archive/v1.0.0.tar.gz"
  sha256 "calculated-sha256-hash"
  license "MIT"

  def install
    bin.install "breathe.sh" => "breathe"
  end

  test do
    system "#{bin}/breathe", "--help"
  end
end