cask "tally" do
  arch arm: "arm64", intel: "x64"

  version "0.3.2"
  sha256 arm:   "8545da43d5e599c0a0f11636a7ac1376cfc79be65ecf99ae0602c3e72cef97bc",
         intel: "8300dd84b0f83c2f59c80021ec7bf42da11f37bfb505b4f3a59d394262f5543f"

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
