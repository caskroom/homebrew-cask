cask "logisim" do
  version "2.7.1"
  sha256 "41c5555b8021794e268a3fc2c9c51301d919680ae780b000b99380fc492bae7c"

  url "https://downloads.sourceforge.net/circuit/#{version.sub(/\d+$/, "x")}/#{version}/logisim-macosx-#{version}.tar.gz",
      verified: "sourceforge.net/circuit/"
  appcast "https://sourceforge.net/projects/circuit/rss"
  name "Logisim"
  homepage "http://www.cburch.com/logisim/"

  app "Logisim.app"

  zap trash: "~/Library/Preferences/com.cburch.logisim.plist"
end
