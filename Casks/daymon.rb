cask "daymon" do
  version "0.1.15"
  sha256 "394635115120be046d39291814ff74b72f3a46c541fe4334c2f8d9b50dde14b2"

  url "https://github.com/daymonio/daymon/releases/download/v#{version}/Daymon-0.1.15-universal.dmg"
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
