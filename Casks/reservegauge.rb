cask "reservegauge" do
  version "1.0.74"
  sha256 "33f03cda7aa4a4c0b0bc44d54e1772e10efe8e74875d11e78ae283645c8c93ad"

  url "https://reservegauge.com/ReserveGauge.dmg"
  name "ReserveGauge"
  desc "Menu-bar forecaster for Codex and Claude Code usage limits"
  homepage "https://reservegauge.com/"

  # The app updates itself via Sparkle, so Homebrew shouldn't try to upgrade it.
  auto_updates true
  depends_on macos: :sonoma

  app "ReserveGauge.app"

  zap trash: [
    "~/Library/Application Support/ReserveGauge",
    "~/Library/Caches/com.reservegauge.app",
    "~/Library/HTTPStorages/com.reservegauge.app",
    "~/Library/HTTPStorages/com.reservegauge.app.binarycookies",
    "~/Library/Preferences/com.reservegauge.app.plist",
  ]
end
