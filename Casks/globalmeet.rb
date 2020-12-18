cask "globalmeet" do
  version "7.0.1910.1910"
  sha256 :no_check

  url "https://convergencedesktop.globalmeet.com/installers/stable/GlobalMeet.dmg"
  name "GlobalMeet"
  homepage "https://www.globalmeet.com/"

  app "GlobalMeet.app"

  zap trash: [
    "~/Library/Application Support/globalmeet",
    "~/Library/Logs/GlobalMeet",
    "~/Library/Saved Application State/com.electron.globalmeet.savedState",
  ]
end
