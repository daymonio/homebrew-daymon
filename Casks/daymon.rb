cask "daymon" do
  version "0.1.20"
  sha256 "66f63b9272d5c6d509f7c25699efc751c4eae9ec11c335bde1343c3388bb1408"

  url "https://github.com/daymonio/daymon/releases/download/v#{version}/Daymon-0.1.20-universal.dmg"
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
