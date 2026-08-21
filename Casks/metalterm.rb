cask "metalterm" do
  version "0.1.5"
  sha256 "a71e813f4422edbca92bda18c6039f83c18a31474314d7b03c4109085494b50f"

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
