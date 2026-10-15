class SeamlessGlance < Formula
  desc "Fast, read-only AWS TUI for cloud infrastructure visibility"
  homepage "https://github.com/fells-code/seamless-glance"
  license "Apache-2.0"
  version "1.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fells-code/seamless-glance/releases/download/v1.3.0/seamless-glance-1.3.0-aarch64-apple-darwin"
      sha256 "8ff94fffc995e3c708791e0b9547c6ea8c2898a4dbce27cfe8c772840e7cf3f2"
    else
      url "https://github.com/fells-code/seamless-glance/releases/download/v1.3.0/seamless-glance-1.3.0-x86_64-apple-darwin"
      sha256 "1be0f850c448bd8162a054792c55244114be1507d79df0909d30baaa92e95955"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fells-code/seamless-glance/releases/download/v1.3.0/seamless-glance-1.3.0-aarch64-unknown-linux-gnu"
      sha256 "5ed68638f99374fd7bab0dc34903f8b669844b10d00dec469e4df7e203c701f6"
    else
      url "https://github.com/fells-code/seamless-glance/releases/download/v1.3.0/seamless-glance-1.3.0-x86_64-unknown-linux-gnu"
      sha256 "ec7fda51b5134fbf5c1a8194bfdf9715869ceb892159126b833153fa128b8b51"
    end
  end
  def install
    bin.install Dir["seamless-glance-*"].first => "seamless-glance"
    bin.install_symlink "seamless-glance" => "glance"
  end

  test do
    system "#{bin}/seamless-glance", "--version"
  end
end
