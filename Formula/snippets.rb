class Snippets < Formula
  desc "Lean static site generator"
  homepage "https://github.com/yuval-a/snippets"
  head "https://github.com/yuval-a/snippets.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/snippets", "--version"
  end
end
