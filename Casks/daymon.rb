cask "daymon" do
  version "0.1.23"
  sha256 "27797233331d7cb3cb521fa345a97914728120d419cb07fa68024060d5133144"

  url "https://github.com/daymonio/daymon/releases/download/v#{version}/Daymon-0.1.23-universal.dmg"
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
