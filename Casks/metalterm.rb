cask "metalterm" do
  version "0.1.2"
  sha256 "7855bcc7269c6fc4a816b89efd2fe41efc25e06f13faf29078619ad499609e8b"

  url "https://github.com/pioner92/metalterm-site/releases/download/downloads/Metalterm-#{version}.dmg",
      verified: "github.com/pioner92/metalterm-site/"
  name "Metalterm"
  desc "GPU-rendered terminal for macOS"
  homepage "https://metalterm.dev"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  auto_updates true

  livecheck do
    url "https://metalterm.dev/appcast.xml"
    strategy :sparkle
  end

  app "Metalterm.app"

  zap trash: "~/.config/metalterm"
end
