cask "cursor-gauge" do
  version "2.0.1"
  sha256 "a1b1c01b662fb82b1d84e299a7bd080f9a286e2b5ee2ce78cfde76fec96bef74"

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
