class SeamlessGlance < Formula
  desc "Fast, read-only AWS TUI for cloud infrastructure visibility"
  homepage "https://seamlessglance.com"
  license "Proprietary"
  version "0.1.0-beta.12"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fells-code/seamless-glance-distro/releases/download/v0.1.0-beta.12/seamless-glance-0.1.0-beta.12-aarch64-apple-darwin"
    sha256 "1b5d914bf0bb9ee07a1e542a585aa31305c108b6c5232341dee5c9e1a68bbc95"
  elsif OS.mac?
    url "https://github.com/fells-code/seamless-glance-distro/releases/download/v0.1.0-beta.12/seamless-glance-0.1.0-beta.12-x86_64-apple-darwin"
    sha256 "f6ecf686c682f36b9c4d095e96f1ec208ea32489f16dda5b6f0ecca0ada4df2b"
  else
    odie "Seamless Glance is currently supported on macOS via Homebrew"
  end

  def install
     bin.install Dir["seamless-glance-*"].first => "seamless-glance"
  end

  test do
    system "#{bin}/seamless-glance", "--help"
  end
end
