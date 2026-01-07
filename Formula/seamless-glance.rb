class SeamlessGlance < Formula
  desc "Fast, read-only AWS TUI for cloud infrastructure visibility"
  homepage "https://seamlessglance.com"
  license "Proprietary"
  version "0.1.0-beta.12"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fells-code/seamless-glance-distro/releases/download/v0.1.0-beta.12/seamless-glance-0.1.0-beta.12-aarch64-apple-darwin"
    sha256 "1973c3646ced53587d1a214c535593cc1a46e49d1b775b6cb26a01b0c979ddd0"
  elsif OS.mac?
    url "https://github.com/fells-code/seamless-glance-distro/releases/download/v0.1.0-beta.12/seamless-glance-0.1.0-beta.12-x86_64-apple-darwin"
    sha256 "51a459a169452f29bb44ee2037c2b32d802538371d2666c1dd0445240494132c"
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
