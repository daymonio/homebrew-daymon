cask "daymon" do
  version "0.1.19"
  sha256 "4c5462673f8594c294e2ccc063ad6db4800fa1a5e150eed9ed7df3d0438855c2"

  url "https://github.com/daymonio/daymon/releases/download/v#{version}/Daymon-0.1.19-universal.dmg"
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
