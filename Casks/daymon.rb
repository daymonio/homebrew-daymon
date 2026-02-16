cask "daymon" do
  version "0.1.10"
  sha256 "ef5000ee7f92b974888b1c5ae2a95d3aa814f73f8735638b8ec501113af18e8e"

  url "https://github.com/daymonio/daymon/releases/download/v#{version}/Daymon-0.1.10-arm64.dmg"
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
