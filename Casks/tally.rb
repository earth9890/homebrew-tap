cask "tally" do
  arch arm: "arm64", intel: "x64"

  version "0.3.3"
  sha256 arm:   "f6637daffd08771d6593ae600e3e9c7e36b42bf73b7c72214454ef281977f15f",
         intel: "9eb36fc26b53645116417e2e49b53dbdf13f848407c7761c453945d28e086eb5"

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
