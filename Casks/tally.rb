cask "tally" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "32c0b100c58a321f7e6bb9d54ff9b5dd142f7e60b7d9b51dc57f3be8d50209a6",
         intel: "50a58611c8def3807aa7b488ae56f914409553be91d7b3d5047fe2e527b31c95"

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
