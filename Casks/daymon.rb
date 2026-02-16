cask "daymon" do
  version "0.1.8"
  sha256 "9d535b55184b3ba531bf16090e4f97a5e279a4e6dd9eafbd37dbc8f1dc14b7f5"

  url "https://github.com/daymonio/daymon/releases/download/v#{version}/Daymon-0.1.8-arm64.dmg"
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
