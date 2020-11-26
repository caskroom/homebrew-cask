cask "macdroid" do
  version "1.3"
  sha256 "dd12769474dd8b45f33160bba7b6ae37c3323a5c0963d0e039658b7d206c796d"

  # cdn.electronic.us/products/macdroid/mac/download/ was verified as official when first introduced to the cask
  url "https://cdn.electronic.us/products/macdroid/mac/download/macdroid.dmg"
  appcast "https://cdn.electronic.us/products/macdroid/mac/update/settings.xml"
  name "MacDroid"
  desc "Connect to your Android devices"
  homepage "https://www.macdroid.app/"

  app "MacDroid.app"

  zap trash: [
    "~/Library/Application Scripts/us.electronic.macdroid.AFTFinderSync",
    "~/Library/Application Support/MacDroid",
    "~/Library/Application Support/us.electronic.macdroid",
    "~/Library/Caches/us.electronic.macdroid",
    "~/Library/Containers/us.electronic.macdroid.AFTFinderSync",
    "~/Library/Group Containers/XS85JU6YZ3.us.electronic.macdroid",
    "~/Library/HTTPStorages/us.electronic.macdroid.binarycookies",
    "~/Library/Logs/MacDroid.log",
    "~/Library/Preferences/us.electronic.macdroid.plist",
  ]
end
