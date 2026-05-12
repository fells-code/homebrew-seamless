class SeamlessGlance < Formula
  desc "Fast, read-only AWS TUI for cloud infrastructure visibility"
  homepage "https://seamlessglance.com"
  license "Proprietary"
  version "1.0.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fells-code/seamless-glance-distro/releases/download/v1.0.0/seamless-glance-1.0.0-aarch64-apple-darwin"
    sha256 "54f8fab739921d60510ddf24f61cef35a2d69ec355be38261bf742c7d0a131d9"
  elsif OS.mac?
    url "https://github.com/fells-code/seamless-glance-distro/releases/download/v1.0.0/seamless-glance-1.0.0-x86_64-apple-darwin"
    sha256 "68d2bf417ca6c976429dfe406b8ca50ea65cbe29df7a294a32dedc2781c6f24d"
  else
    odie "Seamless Glance is currently supported on macOS via Homebrew"
  end

  def install
    bin.install Dir["seamless-glance-*"].first => "seamless-glance"
    bin.install_symlink "seamless-glance" => "glance"
  end

  test do
    system "#{bin}/seamless-glance", "--help"
  end
end
