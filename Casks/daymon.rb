cask "daymon" do
  version "0.1.4"
  sha256 "2455f062d67882608f18c9530b64d3c5adf9776565b8f410e8bcc6b8e880c878"

  url "https://github.com/daymonio/daymon/releases/download/v#{version}/Daymon-0.1.4-arm64.dmg"
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
