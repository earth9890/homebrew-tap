cask "tally" do
  arch arm: "arm64", intel: "x64"

  version "0.2.10"
  sha256 arm:   "e1c0712f9785a0efee5cccebe6339dbde18e55fab9f5732d8df2ed2e7f965156",
         intel: "8be1efe0ecd610ff0a0b96b487797f6576cc907a5c41856692bfbed78df040ee"

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
