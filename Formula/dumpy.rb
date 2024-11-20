class Dumpy < Formula
  desc "Quick terminal journaling tool"
  homepage "https://github.com/eden-chan/homebrew-dumpy"
  url "https://github.com/eden-chan/homebrew-dumpy/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
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
