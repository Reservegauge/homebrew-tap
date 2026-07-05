cask "reservegauge" do
  version "1.0.77"
  sha256 "88b083a5214e01e6dac37b49f721884c72b2f6f90561545dbfec645e45fa0f71"

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
