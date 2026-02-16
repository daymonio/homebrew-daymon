cask "daymon" do
  version "0.1.13"
  sha256 "a414c2df357dc722e4ebd329e6aa6de4e06a5a3c4c62a9da5b63393c1c47b757"

  url "https://github.com/daymonio/daymon/releases/download/v#{version}/Daymon-0.1.13-universal.dmg"
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
