cask "reservegauge" do
  version "1.0.69"
  sha256 "73211c39235e55bec125bc25cc930b216dc1d67b47af632b09c2453a05e652e0"

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
