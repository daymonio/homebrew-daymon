cask "daymon" do
  version "0.1.1"
  sha256 "7f2bcf803fa52c33f1e19dcde27b159140ca8969796594b133ca7c56c7e378ac"

  url "https://github.com/daymonio/daymon/releases/download/v#{version}/Daymon-0.1.0-arm64.dmg"
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
