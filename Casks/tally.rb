cask "tally" do
  arch arm: "arm64", intel: "x64"

  version "0.3.5"
  sha256 arm:   "328f6b1f2e08180e76e547a93cdbc8af2d05c9f449849af5addccd0564ba39f7",
         intel: "810b3e5aa50852883e01677d44f9ac691bf50fb2f5afbc17b135814c51e08db3"

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
