cask "cursor-gauge" do
  version "2.0.3"
  sha256 "90df07c71dd53ad0cd68759f8d5dcab00487620532ec1a65b58e4a4fa65131a8"

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
