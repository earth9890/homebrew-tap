cask "tally" do
  arch arm: "arm64", intel: "x64"

  version "0.3.1"
  sha256 arm:   "6e5eef0e2f8513d402e9c3f4abad68b1ca1525f46dbea11ec830b3ee9f38297a",
         intel: "bae807572ce7d2868a5ed7c03ec174796f2c3c043d07287a130669c3b822f1e6"

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
