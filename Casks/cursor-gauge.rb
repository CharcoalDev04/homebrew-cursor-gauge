cask "cursor-gauge" do
  version "2.0.0"
  sha256 "8396adf7b320e8fb086002df2cb1617bc8af6cc1329a966896f8763cfc19a3c4"

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
