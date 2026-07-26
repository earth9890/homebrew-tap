cask "tally" do
  arch arm: "arm64", intel: "x64"

  version "0.2.7"
  sha256 arm:   "771b7bd2e3b65e0f2f283947d2c99684453409fe15ab9863d2eb6e119190dd15",
         intel: "0be9f39a8359ec4a1cceac1f3bb51394abb7e608d2466404019ca279c2d9258f"

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
