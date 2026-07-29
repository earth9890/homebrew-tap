cask "tally" do
  arch arm: "arm64", intel: "x64"

  version "0.2.13"
  sha256 arm:   "ba6696419bff5d53f6401a2c1b1f5385bcbac0e69aad2f25732761940d8bb98a",
         intel: "99af27dfee5cc9aae4454cde81fbb0d07b63f04886c25dd5103961645ba2ddb1"

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
