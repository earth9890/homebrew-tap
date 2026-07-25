cask "tally" do
  arch arm: "arm64", intel: "x64"

  version "0.2.4"
  sha256 arm:   "27844815fb8e0efa88e395dcdf67d55d1b848a08d637f9965fa820a47f5e9be2",
         intel: "d5064d4ed27c9796563a848f64916a64be48bf934e7870068135866aa261aaea"

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
