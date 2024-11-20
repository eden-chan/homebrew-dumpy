class Dumpy < Formula
  desc "Quick terminal journaling tool"
  homepage "https://github.com/eden-chan/homebrew-dumpy"
  url "https://github.com/eden-chan/homebrew-dumpy/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "9d15fc47c73ade3a3a328b07ac7ebd9faaf4b0eeca84db72f6b3c8ef61c1f11f"
  license "MIT"
  depends_on "bun"

  def install
    bin.mkpath
    bin.install "bin/dumpy"
    bin.install Dir["bin/*.dumpy"]  # Install utility scripts to bin
    
    # Install remaining files from the project
    prefix.install Dir["*"]
    # Ensure all scripts are executable
    chmod 0755, Dir[bin/"*.dumpy"]
    chmod 0755, bin/"dumpy"
  end

  test do
    assert_match "dumpy", shell_output("#{bin}/dumpy --version")
  end
end

