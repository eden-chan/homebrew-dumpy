class Dumpy < Formula
  desc "Quick terminal journaling tool"
  homepage "https://github.com/eden-chan/homebrew-dumpy"
  url "https://github.com/eden-chan/homebrew-dumpy/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855" # Temporary SHA, will update after release
  
  depends_on "bun"

  def install
    bin.install "bin/dumpy"
  end

  test do
    system "#{bin}/dumpy", "--version"
  end
end
