cask "metalterm" do
  version "0.1.4"
  sha256 "a734b2eb5aeffbfb56609204098e7c3b42c4ae84d6218c29054256cc9afcbde9"

  url "https://github.com/pioner92/metalterm-site/releases/download/downloads/Metalterm-#{version}.dmg",
      verified: "github.com/pioner92/metalterm-site/"
  name "Metalterm"
  desc "GPU-rendered terminal for macOS"
  homepage "https://metalterm.dev"

  depends_on macos: :sonoma

  auto_updates true

  livecheck do
    url "https://metalterm.dev/appcast.xml"
    strategy :sparkle
  end

  app "Metalterm.app"

  zap trash: "~/.config/metalterm"
end
