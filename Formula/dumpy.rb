class Dumpy < Formula
  desc "Quick terminal journaling tool"
  homepage "https://github.com/eden-chan/homebrew-dumpy"
  url "https://github.com/eden-chan/homebrew-dumpy/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "b7a1e9597ec6d529572c4310644b39fe42e610418ef517b0f283f965b9d12abe"
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

