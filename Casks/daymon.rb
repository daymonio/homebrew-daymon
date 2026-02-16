cask "daymon" do
  version "0.1.12"
  sha256 "a049d5a25bb477d473616f3f0b25ace71045d352050d20dda5446648b3083cf3"

  url "https://github.com/daymonio/daymon/releases/download/v#{version}/Daymon-0.1.12-arm64.dmg"
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
