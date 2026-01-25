class SeamlessGlance < Formula
  desc "Fast, read-only AWS TUI for cloud infrastructure visibility"
  homepage "https://seamlessglance.com"
  license "Proprietary"
  version "0.1.0-beta.15"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fells-code/seamless-glance-distro/releases/download/v0.1.0-beta.15/seamless-glance-0.1.0-beta.15-aarch64-apple-darwin"
    sha256 "a8202e8c77b03b3f85f38e31d05e0f3c6d00482f8e54c437278de9ca5d9e0155"
  elsif OS.mac?
    url "https://github.com/fells-code/seamless-glance-distro/releases/download/v0.1.0-beta.15/seamless-glance-0.1.0-beta.15-x86_64-apple-darwin"
    sha256 "5db2c820a30f8f6c33df08ad4a4b6af41ed2b9f8e44bff7dc51b7bb18084e6e0"
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
