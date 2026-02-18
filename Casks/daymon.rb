cask "daymon" do
  version "0.1.25"
  sha256 "25034e5dc5d56973dd6849e56a8d5c7aac26bf4310220d5d02948689379336de"

  url "https://github.com/daymonio/daymon/releases/download/v#{version}/Daymon-0.1.25-universal.dmg"
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
