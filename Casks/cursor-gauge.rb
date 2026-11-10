cask "cursor-gauge" do
  version "2.0.4"
  sha256 "e2e0a5cce8eb51d5592b163e5353b23d21bb4e15cb3c322c718a5ab4f96db471"

  url "https://github.com/CharcoalDev04/cursor-gauge/releases/download/v#{version}/CursorGauge-#{version}.zip"
  name "Cursor Gauge"
  desc "Menu bar app for Cursor plan usage"
  homepage "https://github.com/CharcoalDev04/cursor-gauge"

  depends_on macos: :tahoe

  app "Cursor Gauge.app"

  zap trash: [
    "~/Library/Preferences/com.cursorgauge.app.plist",
  ]
end
