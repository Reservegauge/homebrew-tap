cask "reservegauge" do
  version "1.0.108"
  sha256 "74e392b973dd714005b77d1bc2c0b19de4d84802d04e7ad78612fc018cf82a96"

  url "https://reservegauge.com/ReserveGauge.dmg"
  name "ReserveGauge"
  desc "Menu-bar forecaster for Codex and Claude Code usage limits"
  homepage "https://reservegauge.com/"

  # The app updates itself via Sparkle, so Homebrew shouldn't try to upgrade it.
  auto_updates true
  depends_on macos: ">= :ventura"

  app "ReserveGauge.app"

  zap trash: [
    "~/Library/Application Support/ReserveGauge",
    "~/Library/Caches/com.reservegauge.app",
    "~/Library/HTTPStorages/com.reservegauge.app",
    "~/Library/HTTPStorages/com.reservegauge.app.binarycookies",
    "~/Library/Preferences/com.reservegauge.app.plist",
  ]
end
