cask "tetrio" do
  version :latest
  sha256 :no_check

  url "https://tetr.io/about/desktop/builds/TETR.IO%20Setup.dmg"
  name "TETR.IO"
  desc "Free-to-play Tetris clone"
  homepage "https://tetr.io/about"
  zap trash: [
    "~/Library/Application Support/tetrio-desktop",
    "~/Library/Preferences/sh.osk.tetrio-client.plist",
    "~/Library/Saved Application State/sh.osk.tetrio-client.savedState",
    "~/Library/WebKit/sh.osk.tetrio-client"
  ]
  app "TETR.IO.app"
end
