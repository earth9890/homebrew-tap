cask "tally" do
  version "0.1.4"
  sha256 "711a58d0e85e37671172f5e112a1f2aaceb38f6fd2a985764c1b13f6d48fc885"

  url "https://github.com/earth9890/tally/releases/download/v#{version}/Tally-#{version}-arm64.dmg"
  name "Tally"
  desc "Local-first, automatic personal time tracker for the menu bar"
  homepage "https://github.com/earth9890/tally"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64

  app "Tally.app"

  zap trash: [
    "~/Library/Application Support/Tally",
    "~/Library/Preferences/io.earth9890.tally.plist",
    "~/Library/Caches/tally-updater",
  ]
end
