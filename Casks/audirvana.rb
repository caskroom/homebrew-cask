cask "audirvana" do
  version "3.5.39"
  sha256 "a5209ca46da696e4617e5eec2ddfb7199ddfbcdd851131f8a908bcf929660cbd"

  url "https://audirvana.com/delivery/Audirvana_#{version}.dmg"
  appcast "https://audirvana.com/delivery/audirvana#{version.major}_#{version.minor}_appcast.xml"
  name "Audirvana"
  homepage "https://audirvana.com/"

  auto_updates true

  app "Audirvana.app"

  zap trash: [
    "/Library/LaunchDaemons/com.audirvana.Audirvana-Plus.plist",
    "/Library/LaunchDaemons/com.audirvana.SysOptimizerTool.plist",
    "/Library/PrivilegedHelperTools/com.audirvana.Audirvana-Plus",
    "~/Library/Caches/com.audirvana.Audirvana-Plus",
    "~/Library/Cookies/com.audirvana.Audirvana-Plus.binarycookies",
    "~/Library/Preferencescom.audirvana.Audirvana.plist",
    "~/Library/Preferences/com.audirvana.Audirvana-Plus.plist",
  ]
end
