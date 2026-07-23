cask "tally" do
  arch arm: "arm64", intel: "x64"

  version "0.1.7"
  sha256 arm:   "a811aca9a81f90a2fcc533c0f10aea5d2f179085309aea986c392799b17a18b9",
         intel: "9f8cfeb9a21dcbcb6af49d7c9ed667d72067c63469d97dcc3ec05f96c9545dff"

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
