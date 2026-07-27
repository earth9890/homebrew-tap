cask "tally" do
  arch arm: "arm64", intel: "x64"

  version "0.2.11"
  sha256 arm:   "2eba4d4b00c4a1a4b0c1ae34540a2c691e798d9e394d63bef97fb4455ee4235c",
         intel: "7bda5edda5dced10627493f01727b7190e5012723dc209d1e1371517e76923fa"

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
