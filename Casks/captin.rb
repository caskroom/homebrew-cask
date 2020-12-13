cask "captin" do
  version "1.1.1,129:1607066962"
  sha256 "47d82111549f7751263411bd6b3af6ad31b343de5d254d74562e57d3df6f1efe"

  url "https://dl.devmate.com/com.100hps.captin/#{version.after_comma.before_colon}/#{version.after_colon}/Captin-#{version.after_comma.before_colon}.dmg",
      verified: "dl.devmate.com/com.100hps.captin/"
  appcast "https://updates.devmate.com/com.100hps.captin.xml"
  name "Captin"
  homepage "http://captin.strikingly.com/"

  app "Captin.app"

  uninstall quit: "com.100hps.captin"

  zap trash: [
    "~/Library/Caches/com.100hps.captin",
    "~/Library/Preferences/com.100hps.captin.plist",
  ]
end
