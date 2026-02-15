cask "daymon" do
  version "0.1.0"
  sha256 "16254a45dfc57e25dc66bdc4c4233a4e287a6251d232cec4ee6804ec4e29f6e5"

  url "https://github.com/daymonio/daymon/releases/download/v#{version}/Daymon-0.1.0-arm64.dmg"
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
