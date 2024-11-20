class Dumpy < Formula
  desc "Quick terminal journaling tool"
  homepage "https://github.com/eden-chan/homebrew-dumpy"
  url "https://github.com/eden-chan/homebrew-dumpy/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "b7a1e9597ec6d529572c4310644b39fe42e610418ef517b0f283f965b9d12abe"
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
