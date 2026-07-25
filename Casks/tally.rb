cask "tally" do
  arch arm: "arm64", intel: "x64"

  version "0.2.1"
  sha256 arm:   "dff8b53a88dd7a65b1d596d257a1c441eb4b080024e2810e745492292e159294",
         intel: "1c2ebd14320747e47cffe2bfad4bc1aa29da990011da797f030b9a88bbc999d5"

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
