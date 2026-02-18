cask "daymon" do
  version "0.1.27"
  sha256 "bde83253adb3eee709fea03e5e4433a31a42ac006b2c80b290b28bb84d5880fb"

  url "https://github.com/daymonio/daymon/releases/download/v#{version}/Daymon-0.1.27-universal.dmg"
  name "Daymon"
  desc "Open source autopilot for Claude - scheduled tasks, memory, background automation"
  homepage "https://daymon.io"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Daymon.app"

  uninstall quit: "io.daymon.app"

  zap trash: [
    "~/Library/Application Support/daymon",
    "~/Library/Preferences/io.daymon.app.plist",
    "~/Library/Saved Application State/io.daymon.app.savedState",
  ]
end
