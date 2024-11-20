class Dumpy < Formula
  desc "Quick terminal journaling tool"
  homepage "https://github.com/eden-chan/homebrew-dumpy"
  url "https://github.com/eden-chan/homebrew-dumpy/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "321cd84d803b21b6b9ebf01c78858bfaef99b9aa42f2d7cbaed32d4058e06b0d"
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
