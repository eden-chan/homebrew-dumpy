class Dumpy < Formula
  desc "Quick terminal journaling tool"
  homepage "https://github.com/eden-chan/homebrew-dumpy"
  url "https://github.com/eden-chan/homebrew-dumpy/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "9d15fc47c73ade3a3a328b07ac7ebd9faaf4b0eeca84db72f6b3c8ef61c1f11f"
  depends_on "bun"

  def install
    bin.install "bin/dumpy"
  end

  test do
    system "#{bin}/dumpy", "--version"
  end
end

