class BrewFormula < Formula
  desc "Guide you through a breathing exercise with customizable iterations and patterns"
  homepage "https://github.com/Yamilquery/homebrew-breathe"
  url "https://github.com/Yamilquery/homebrew-breathe/archive/v1.0.0.tar.gz"
  sha256 "a8cce4d704b722010566afe18a59bc5ab0a9e841da84cc20fd72aacf10a4bf46"
  license "MIT"

  def install
    bin.install "breathe.sh" => "breathe"
  end

  test do
    system "#{bin}/breathe", "--help"
  end
end