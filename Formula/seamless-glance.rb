class SeamlessGlance < Formula
  desc "Fast, read-only AWS TUI for cloud infrastructure visibility"
  homepage "https://seamlessglance.com"
  license "Proprietary"
  version "0.1.0-beta.13"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fells-code/seamless-glance-distro/releases/download/v0.1.0-beta.13/seamless-glance-0.1.0-beta.13-aarch64-apple-darwin"
    sha256 "51d96d4209b9881b7b9b336f971e8219af8329762ebc71092d30cdb3c0eb0ff4"
  elsif OS.mac?
    url "https://github.com/fells-code/seamless-glance-distro/releases/download/v0.1.0-beta.13/seamless-glance-0.1.0-beta.13-x86_64-apple-darwin"
    sha256 "dedef376874438507a321a18ea6e9600214b698619eb6616d7e0b000dabb033d"
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
