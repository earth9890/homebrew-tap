cask "tally" do
  arch arm: "arm64", intel: "x64"

  version "0.3.4"
  sha256 arm:   "4f97dbf868d652e0a02978ed0fa1826bdd133537779cb0f73ef3fe2a6c4afd93",
         intel: "ef550d9770b710918c454162385bd41d5fb8e632b556f9988498b639d56f757b"

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
