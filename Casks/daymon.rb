cask "daymon" do
  version "0.1.21"
  sha256 "bc43fd49f7d4f14980f7fac132342544db64b9e262dfad06e94f2cb0a9c5366c"

  url "https://github.com/daymonio/daymon/releases/download/v#{version}/Daymon-0.1.21-universal.dmg"
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
