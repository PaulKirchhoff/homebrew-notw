cask "newsoftheworld" do
  version "0.1.2"
  sha256 "8a26214909c62aea0f07d5cba9e3de0ed696f2a95d7a69c2ad20dc4c1a508327"

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
