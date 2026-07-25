cask "tally" do
  arch arm: "arm64", intel: "x64"

  version "0.2.5"
  sha256 arm:   "36ddcd93fa087f078cb5784517e18c5afaac9245d6bfc922665627c4b1610666",
         intel: "e6f86c23b492dfd2dbf341666e6f4797ef4fcec7491f719f9e52d9239257e37d"

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
