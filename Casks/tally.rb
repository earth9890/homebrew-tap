cask "tally" do
  arch arm: "arm64", intel: "x64"

  version "0.2.6"
  sha256 arm:   "bc56e63428fd8c349fb4b2924e863d32381364fe271066eed7cf6c9caca5ba6c",
         intel: "4483f367e60730b17ec1026f511a522807959a517d58b4dffa8e05d9e7c2979e"

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
