cask "sublime-merge" do
  version "2027"
  sha256 "4d21b3ee0a4ae7926baf057c8ca027fdae88ecde7ecaa1c7b8ce17f44215e534"

  # download.sublimetext.com/ was verified as official when first introduced to the cask
  url "https://download.sublimetext.com/sublime_merge_build_#{version}_mac.zip"
  appcast "https://www.sublimemerge.com/updates/stable_update_check"
  name "Sublime Merge"
  homepage "https://www.sublimemerge.com/"

  auto_updates true
  conflicts_with cask: "sublime-merge-dev"

<<<<<<< HEAD
  app 'Sublime Merge.app'
  binary 'Sublime Merge.app/Contents/SharedSupport/bin/smerge'
=======
  app "Sublime Merge.app"
  binary "#{appdir}/Sublime Merge.app/Contents/SharedSupport/bin/smerge"
>>>>>>> upstream/core-code-patch-2

  uninstall quit: "com.sublimemerge"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sublimemerge.sfl*",
    "~/Library/Application Support/Sublime Merge",
    "~/Library/Caches/com.sublimemerge/",
    "~/Library/Preferences/com.sublimemerge.plist",
    "~/Library/Saved Application State/com.sublimemerge.savedState",
  ]
end
