class SeamlessGlance < Formula
  desc "Fast, read-only AWS TUI for cloud infrastructure visibility"
  homepage "https://seamlessglance.com"
  version "0.1.0-beta.8"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fells-code/seamless-glance-distro/releases/download/v0.1.0-beta.8/seamless-glance-0.1.0-beta.8-aarch64-apple-darwin"
    sha256 "95ca51e7e955a0268939713bee6706ebdfafbf96cb91dc16f9f20639596aaf7e"
  elsif OS.mac?
    url "https://github.com/fells-code/seamless-glance-distro/releases/download/v0.1.0-beta.8/seamless-glance-0.1.0-beta.8-x86_64-apple-darwin"
    sha256 "f014dd7dd1958254aaa2128f8883db86841f76e2bd27f8abbec1aa2bd03867c4"
  else
    odie "Seamless Glance is currently supported on macOS via Homebrew"
  end

  def install
    bin.install "seamless-glance"
  end

  test do
    system "#{bin}/seamless-glance", "--help"
  end
end
