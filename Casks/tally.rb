cask "tally" do
  arch arm: "arm64", intel: "x64"

  version "0.2.2"
  sha256 arm:   "0d1d2feba88a50348776f7cba2a03355d1a94d27a966f6c115ac94ee3cfe8f49",
         intel: "afdb37503913ca70845f3928c76857db8e35a62d04bb134c22c35accd7794616"

  url "https://github.com/earth9890/tally/releases/download/v#{version}/Tally-#{version}-#{arch}.dmg"
  name "Tally"
  desc "Local-first, automatic personal time tracker for the menu bar"
  homepage "https://github.com/earth9890/tally"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Tally.app"

  zap trash: [
    "~/Library/Application Support/Tally",
    "~/Library/Preferences/io.earth9890.tally.plist",
    "~/Library/Caches/tally-updater",
  ]
end
