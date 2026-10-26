cask "cursor-gauge" do
  version "2.0.0"
  sha256 "0356ecd21b246265cbc81490a6845b1e7da3e1bbc7912ec6f39aed74d8db3fa9"

  url "https://github.com/CharcoalDev04/cursor-gauge/releases/download/v#{version}/CursorGauge-#{version}.zip"
  name "Cursor Gauge"
  desc "Menu bar app for Cursor plan usage"
  homepage "https://github.com/CharcoalDev04/cursor-gauge"

  depends_on macos: ">= :tahoe"

  app "Cursor Gauge.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Cursor Gauge.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.cursorgauge.app.plist",
  ]
end
