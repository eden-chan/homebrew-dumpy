class Dumpy < Formula
  desc "Quick terminal journaling tool"
  homepage "https://github.com/eden-chan/homebrew-dumpy"
  url "https://github.com/eden-chan/homebrew-dumpy/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "434c2f5b6e391e33cf628bcf34f856477e156917126ff5ef832fd8430f25bcf1"
  depends_on "bun"

  def install
    bin.install "bin/dumpy"
  end

  test do
    system "#{bin}/dumpy", "--version"
  end
end

