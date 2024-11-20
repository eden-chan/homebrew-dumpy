class Dumpy < Formula
  desc "Quick terminal journaling tool"
  homepage "https://github.com/eden-chan/homebrew-dumpy"
  url "https://github.com/eden-chan/homebrew-dumpy/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "dc7b37f04627af9889b4d14111096b3b6e80ddd6f1ea8a43f430ab9d51fd8fcd"
  license "MIT"
  depends_on "bun"
  depends_on "glow" # markdown viewer

  def install
    bin.mkpath
    bin.install "bin/dumpy"
    bin.install Dir["bin/dumpy-*"]
    # Set permissions for all executables
    chmod 0755, Dir[bin/"dumpy*"]
  end

  test do
    assert_match "Usage: dumpy", shell_output("#{bin}/dumpy --help")
  end
end
