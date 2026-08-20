cask "metalterm" do
  version "0.1.3"
  sha256 "ed059c956b6ee247929bee0ceee7a16e48d1b7226dd5e4c83c688f698c5de5b4"

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
