cask "tally" do
  arch arm: "arm64", intel: "x64"

  version "0.2.3"
  sha256 arm:   "950da68068b160f3e2e637c937d27bc3cf756ca50231761a5f1d6445279dbfad",
         intel: "be9c2fca5a508572c75f8b51a5f1ac93eec9005ce3f3caaa70fce85b1b9a99e0"

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
