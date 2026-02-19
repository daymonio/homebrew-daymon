cask "daymon" do
  version "0.1.29"
  sha256 "a19cf04a9c40c930d649cf83a02f105a6bc5e3117d1474e99d5576eb8d899df3"

  url "https://github.com/daymonio/daymon/releases/download/v#{version}/Daymon-0.1.29-universal.dmg"
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
