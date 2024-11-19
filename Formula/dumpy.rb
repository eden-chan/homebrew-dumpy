class Dumpy < Formula
  desc "Quick terminal journaling tool"
  homepage "https://github.com/eden-chan/homebrew-dumpy"
  url "https://github.com/eden-chan/homebrew-dumpy/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "07572cb12c46203e95aa805388b880c86cb59c29c1e18941647e2b7ec1fc270a"
  depends_on "bun"

  def install
    bin.install "bin/dumpy"
  end

  test do
    system "#{bin}/dumpy", "--version"
  end
end
