cask 'sublime-merge' do
  version '1062'
  sha256 'a702b2f0d0762d022f17acdc6ff67b18ffddd2ab88a1a0c9f09d1646aa218312'

  # download.sublimetext.com was verified as official when first introduced to the cask
  url "https://download.sublimetext.com/sublime_merge_build_#{version}_mac.zip"
  name 'Sublime Merge'
  homepage 'https://www.sublimemerge.com/'

  auto_updates true

  app 'Sublime Merge.app'
  binary "#{appdir}/Sublime Merge.app/Contents/SharedSupport/bin/smerge"

  uninstall quit: 'com.sublimemerge'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sublimemerge.sfl*',
               '~/Library/Application Support/Sublime Merge',
               '~/Library/Caches/com.sublimemerge/',
               '~/Library/Preferences/com.sublimemerge.plist',
               '~/Library/Saved Application State/com.sublimemerge.savedState',
             ]
end
