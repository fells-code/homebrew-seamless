class SeamlessGlance < Formula
  desc "Fast, read-only AWS TUI for cloud infrastructure visibility"
  homepage "https://seamlessglance.com"
  license "Proprietary"
  version "0.1.0-beta.14"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fells-code/seamless-glance-distro/releases/download/v0.1.0-beta.14/seamless-glance-0.1.0-beta.14-aarch64-apple-darwin"
    sha256 "36be7c618d15f9b5e485acab334f07e11df8dc2066163e6ee29e4a3958d6437d"
  elsif OS.mac?
    url "https://github.com/fells-code/seamless-glance-distro/releases/download/v0.1.0-beta.14/seamless-glance-0.1.0-beta.14-x86_64-apple-darwin"
    sha256 "e0e82bbe125d386f52c60eccf8e1a3a8dca2f4551df483f9e7763e74eae5dac8"
  else
    odie "Seamless Glance is currently supported on macOS via Homebrew"
  end

 def install
    bin.install "seamless-glance"
    bin.install_symlink "#{bin}/seamless-glance" => "glance"
  end

  test do
    system "#{bin}/seamless-glance", "--help"
  end
end
