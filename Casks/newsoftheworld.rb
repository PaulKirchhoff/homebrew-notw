cask "newsoftheworld" do
  version "0.1.3"
  sha256 "9c3335f0a0df26cf69a0b120e64b5a9048dedc7888967e8b5ac687ce37deaf8c"

  url "https://github.com/PaulKirchhoff/newsoftheworld/releases/download/v#{version}/NewsOfTheWorld-#{version}.dmg"
  name "News of the World"
  desc "Menu-bar news ticker for macOS"
  homepage "https://github.com/PaulKirchhoff/newsoftheworld"

  depends_on macos: ">= :sonoma"

  app "newsoftheworld.app"

  zap trash: [
    "~/Library/Containers/de.paulkirchhoff.newsoftheworld",
    "~/Library/Preferences/de.paulkirchhoff.newsoftheworld.plist",
  ]
end
