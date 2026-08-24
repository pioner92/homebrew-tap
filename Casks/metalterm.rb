cask "metalterm" do
  version "0.1.6"
  sha256 "ac9017e638cc837fe9448e6591ca760580be4ffe3f93f671af709afb684f4ca9"

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
