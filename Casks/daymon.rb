cask "daymon" do
  version "0.1.6"
  sha256 "bf7fc49e741820524b1c668139a05de133548914c2708653c042d34df27a631e"

  url "https://github.com/daymonio/daymon/releases/download/v#{version}/Daymon-0.1.6-arm64.dmg"
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
