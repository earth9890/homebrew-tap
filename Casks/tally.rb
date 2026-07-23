cask "tally" do
  arch arm: "arm64", intel: "74adabded1ebf76bf40c5ab4c5c53fdf9167fb8e23ab4d829d6cb48d564dd3e6"

  version "0.1.6"
  sha256 arm:   "c4d4cab70ec98d526aaad58719dd833d0566f259b973d9d72da0bc0255f1f4d5",
         intel: "74adabded1ebf76bf40c5ab4c5c53fdf9167fb8e23ab4d829d6cb48d564dd3e6"

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
