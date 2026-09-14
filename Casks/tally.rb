cask "tally" do
  arch arm: "arm64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "dd0175383e9aaba5fb8bcaca5d5d44e8950ab47a08bc87e8c85b6c11ce3eaddf",
         intel: "8fe24a1fd0c44f06692a9b0fdbb5d23e4345d0a6c10a2943376fe9052cd0d1ed"

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
