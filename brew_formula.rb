class BrewFormula < Formula
  desc "Guide you through a breathing exercise with customizable iterations and patterns"
  homepage "https://github.com/Yamilquery/homebrew-breathe"
  url "https://github.com/Yamilquery/homebrew-breathe/archive/v1.0.2.tar.gz"
  sha256 "658351bacc0694d39bfca61a0224be87ab3911d7b37383dd6b3283250695deff"
  license "MIT"

  def install
    bin.install "breathe.sh" => "breathe"
  end

  test do
    system "#{bin}/breathe", "--help"
  end
end