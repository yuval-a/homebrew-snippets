class Snippets < Formula
  desc "Lean static site generator"
  homepage "https://github.com/yuval-a/snippets"
  version "1.0.0"

  # Prebuilt binary (Apple Silicon). If you need Intel, we can add it in a follow-up.
  on_macos do
    url "https://github.com/yuval-a/snippets/releases/download/v1.0.0/snippets-v1.0.0-macos.tar.gz"
    sha256 "REPLACE_WITH_SHA256"
  end

  def install
    bin.install "snippets"
  end

  test do
    system "#{bin}/snippets", "--version"
  end
end
