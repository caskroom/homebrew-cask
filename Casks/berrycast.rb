cask "berrycast" do
  version "0.31.2"
  sha256 "ec45bec6c3b1185705d0a1573d84d237fdfe139fe91f7837ac0d9f82c3f21092"

  url "https://media.berrycast.app/desktop-installer/Berrycast-#{version}-latest.dmg",
      verified: "media.berrycast.app/"
  appcast "https://media.berrycast.app/desktop-installer/v2/latest-mac.yml"
  name "Berrycast"
  desc "Screen recorder"
  homepage "https://www.berrycast.com/"

  app "Berrycast.app"

  uninstall login_item: "Berrycast",
            quit:       [
              "com.openmindt.berrycast",
              "com.openmindt.berrycast.helper",
              "com.openmindt.berrycast.helper.GPU",
              "com.openmindt.berrycast.helper.Plugin",
              "com.openmindt.berrycast.helper.Renderer",
            ]

  zap trash: [
    "~/Library/Logs/Berrycast",
    "~/Library/Preferences/com.openmindt.berrycast.plist",
    "~/Library/Saved Application State/com.openmindt.berrycast.savedState",
  ]
end
