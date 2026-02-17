cask "daymon" do
  version "0.1.17"
  sha256 "ec3629fceb181b17b579cbfcbe82e33520a4804f1d23b14a8a758820b096abce"

  url "https://github.com/daymonio/daymon/releases/download/v#{version}/Daymon-0.1.17-universal.dmg"
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
