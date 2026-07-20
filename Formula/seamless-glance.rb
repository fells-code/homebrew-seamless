class SeamlessGlance < Formula
  desc "Fast, read-only AWS TUI for cloud infrastructure visibility"
  homepage "https://github.com/fells-code/seamless-glance"
  license "GPL-3.0-only"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fells-code/seamless-glance/releases/download/v1.2.0/seamless-glance-1.2.0-aarch64-apple-darwin"
      sha256 "98e49e6fbf0f212b11ad9fbeb924dc7297baf3f2ae47fb0caa003e28bfb7e85b"
    else
      url "https://github.com/fells-code/seamless-glance/releases/download/v1.2.0/seamless-glance-1.2.0-x86_64-apple-darwin"
      sha256 "85ad270589d8e874b0e465b210c46ecb8fd06ba2227a2004df539795fc5225da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fells-code/seamless-glance/releases/download/v1.2.0/seamless-glance-1.2.0-aarch64-unknown-linux-gnu"
      sha256 "18ad728c34277dd4c4b19de5f0347939b03d112ea3210462ba5ab34330ca7987"
    else
      url "https://github.com/fells-code/seamless-glance/releases/download/v1.2.0/seamless-glance-1.2.0-x86_64-unknown-linux-gnu"
      sha256 "d127a55a53f77e5799048fe57b0440a36eecd28fd61c93d9f4a9800d03513aa8"
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
