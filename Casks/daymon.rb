cask "daymon" do
  version "0.1.2"
  sha256 "fcb7b60f99f410b0c46ddbde2e8e5fb993335a74556841964ffc15842c319742"

  url "https://github.com/daymonio/daymon/releases/download/v#{version}/Daymon-0.1.2-arm64.dmg"
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
