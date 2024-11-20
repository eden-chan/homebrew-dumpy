class Dumpy < Formula
  desc "Quick terminal journaling tool"
  homepage "https://github.com/eden-chan/homebrew-dumpy"
  url "https://github.com/eden-chan/homebrew-dumpy/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "3dc6f6329f8badc8e2ad4f9b7e2f219b3bc9feb3c5ff9c83ee3b13c082067681"
  license "MIT"
  depends_on "bun"

  def install
    bin.mkpath
    bin.install "bin/dumpy"
    bin.install Dir["bin/*.dumpy"]
    
    # Make everything executable
    chmod 0755, Dir[bin/"*.dumpy"]
    chmod 0755, bin/"dumpy"
  end

  test do
    assert_match "dumpy", shell_output("#{bin}/dumpy --version")
  end
end

