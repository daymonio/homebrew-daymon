cask "daymon" do
  version "0.1.1"
  sha256 "2d8fb4f81674358ee887e461f73fd6fb0a97e69c9c7870cd60092715150c0a9c"

  url "https://github.com/daymonio/daymon/releases/download/v#{version}/Daymon-0.1.1-arm64.dmg"
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
