cask "tally" do
  arch arm: "arm64", intel: "x64"

  version "0.2.12"
  sha256 arm:   "0e9b3f945337da3a6032ebc8830977d7b1b31deedfef08e9c0b471dced3a9960",
         intel: "6002843da926ffde6a2a160d2ffc9535859f21b782dea88df12b55e69e4bb9c5"

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
