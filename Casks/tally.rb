cask "tally" do
  arch arm: "arm64", intel: "x64"

  version "0.2.8"
  sha256 arm:   "c387f4fd521637647542f1f1a161a6a1f6d8346df5782f84614259ba2c92e456",
         intel: "065dec78263df305c54d29db975039476fb2f36e2fe2d4d7d4f09fccd01082c1"

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
