cask "daymon" do
  version "0.1.3"
  sha256 "5a4be5939d49189250cc722d09015f3bb1f7967a4311e3726dd80f75e8e916e3"

  url "https://github.com/daymonio/daymon/releases/download/v#{version}/Daymon-0.1.3-arm64.dmg"
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
