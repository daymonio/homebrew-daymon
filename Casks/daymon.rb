cask "daymon" do
  version "0.1.5"
  sha256 "873ab2295c8cde1bf693b71f6953e57fd5b6a0bc2743a8f8f62425da354d2342"

  url "https://github.com/daymonio/daymon/releases/download/v#{version}/Daymon-0.1.5-arm64.dmg"
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
