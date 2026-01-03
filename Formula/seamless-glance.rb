class SeamlessGlance < Formula
  desc "Fast, read-only AWS TUI for cloud infrastructure visibility"
  homepage "https://seamlessglance.com"
  license "Proprietary"
  version "0.1.0-beta.10"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fells-code/seamless-glance-distro/releases/download/v0.1.0-beta.10/seamless-glance-0.1.0-beta.10-aarch64-apple-darwin"
    sha256 "9cfc7929c4f7127f551352de024bdbeb987778a7fa4972d9c5fde799a65cd41f"
  elsif OS.mac?
    url "https://github.com/fells-code/seamless-glance-distro/releases/download/v0.1.0-beta.10/seamless-glance-0.1.0-beta.10-x86_64-apple-darwin"
    sha256 "46f57177b67c94863543a17444235345fc89bdafbfb4675e433a7eaa93d92634"
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
