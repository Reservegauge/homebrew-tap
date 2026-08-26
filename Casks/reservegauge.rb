cask "reservegauge" do
  version "1.0.95"
  sha256 "5ba6325178cfefde4dd28d8fc0432b23343e2898c7ade45f29a2e7b54f3bf60e"

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
