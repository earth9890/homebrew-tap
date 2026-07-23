cask "tally" do
  arch arm: "arm64", intel: "x64"

  version "0.1.5"
  sha256 arm:   "c0187792e78d405558e129bc6d13bbcfeac21eb345e25e2c3233185d9a065795",
         intel: "e8c0e045bc42b1292d4e4065624c1c6618d4b3bad9387c10a9d8458e229491d6"

  url "https://github.com/earth9890/tally/releases/download/v#{version}/Tally-#{version}-#{arch}.dmg"
  name "Tally"
  desc "Local-first, automatic personal time tracker for the menu bar"
  homepage "https://github.com/earth9890/tally"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Tally.app"

  zap trash: [
    "~/Library/Application Support/Tally",
    "~/Library/Preferences/io.earth9890.tally.plist",
    "~/Library/Caches/tally-updater",
  ]
end
