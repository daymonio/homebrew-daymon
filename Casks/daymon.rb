cask "daymon" do
  version "0.1.9"
  sha256 "e75f262ea08b53e6473369aa741da43de97ff7fc21150503b8fd11aaa0832e0b"

  url "https://github.com/daymonio/daymon/releases/download/v#{version}/Daymon-0.1.9-arm64.dmg"
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
