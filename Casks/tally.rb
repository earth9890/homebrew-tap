cask "tally" do
  arch arm: "arm64", intel: "x64"

  version "0.2.9"
  sha256 arm:   "08eaa509a0067f0541fb62af91733cd4c9439d51f9b36b36708ff375dcad5b2d",
         intel: "2f169ee6f9f3be867149219608716930691642372350577696ad2decbcf90a37"

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
