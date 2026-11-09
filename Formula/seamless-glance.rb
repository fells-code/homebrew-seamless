class SeamlessGlance < Formula
  desc "Fast, read-only AWS TUI for cloud infrastructure visibility"
  homepage "https://github.com/fells-code/seamless-glance"
  license "Apache-2.0"
  version "1.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fells-code/seamless-glance/releases/download/v1.3.1/seamless-glance-1.3.1-aarch64-apple-darwin"
      sha256 "317dd26b46308c6400f5ee7c27ed33ffbc8debf2a9c98c5f53d8dded5060ad0a"
    else
      url "https://github.com/fells-code/seamless-glance/releases/download/v1.3.1/seamless-glance-1.3.1-x86_64-apple-darwin"
      sha256 "dbbce1ef7629625b607fd80018560bfafbeec35d1cf4f2111846e48a0a06fa4b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fells-code/seamless-glance/releases/download/v1.3.1/seamless-glance-1.3.1-aarch64-unknown-linux-gnu"
      sha256 "ebe7d4c94812d04695afc2179a12f8a7e52ad241028a4ad5824b7d1241f7a613"
    else
      url "https://github.com/fells-code/seamless-glance/releases/download/v1.3.1/seamless-glance-1.3.1-x86_64-unknown-linux-gnu"
      sha256 "f37fda59b0fce78cfa42c8547b58e200bd92d6ee9ade1f92115d2027f1d7ade3"
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
