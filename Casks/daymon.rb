cask "daymon" do
  version "0.1.16"
  sha256 "aa2e2ae85528c1982ebd3dcfde9ae27c66f5500c1b2edb3efe3fe9e24363b789"

  url "https://github.com/daymonio/daymon/releases/download/v#{version}/Daymon-0.1.16-universal.dmg"
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
