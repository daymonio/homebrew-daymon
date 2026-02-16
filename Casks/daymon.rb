cask "daymon" do
  version "0.1.14"
  sha256 "800e17e4dfce9c1ccdf26e97eeb0beaac83d336e57bc10b16dae1bdea7f140f7"

  url "https://github.com/daymonio/daymon/releases/download/v#{version}/Daymon-0.1.14-universal.dmg"
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
