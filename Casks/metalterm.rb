cask "metalterm" do
  version "0.1.10"
  sha256 "8998d088c966f7598a9769522118f2c8d55ffb3b29ffce0478031db5c3e73d3a"

  url "https://github.com/pioner92/metalterm-site/releases/download/downloads/Metalterm-#{version}.dmg"
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
