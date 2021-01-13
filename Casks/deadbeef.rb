cask "deadbeef" do
  version "1.0,fd1a0f9"
  sha256 :no_check

  url "https://downloads.sourceforge.net/deadbeef/travis/osx/master/deadbeef-devel-osx-x86_64.zip",
      verified: "downloads.sourceforge.net/deadbeef/"
  appcast "https://sourceforge.net/projects/deadbeef/rss?path=/travis/osx/master"
  name "DeaDBeeF"
  desc "Modular audio player"
  homepage "https://deadbeef.sourceforge.io/"

  app "DeaDBeeF.app"

  zap trash: [
    "~/Library/Preferences/com.deadbeef.deadbeef.plist",
    "~/Library/Preferences/deadbeef",
    "~/Library/Saved Application State/com.deadbeef.deadbeef.savedState",
  ]
end
