cask 'xit' do
  version '1.0b8'
  sha256 'd75ff6baa6743be50edcfb4e5c1dab12dba6759e397cf694eefe3885be231138'

  url "https://github.com/Uncommon/Xit/releases/download/#{version}/Xit.zip"
  appcast 'https://github.com/Uncommon/Xit/releases.atom'
  name 'Xit'
  homepage 'https://github.com/Uncommon/Xit'

  app 'Xit.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.uncommonplace.xit.sfl*',
               '~/Library/Caches/com.uncommonplace.Xit',
               '~/Library/Preferences/com.uncommonplace.Xit.plist',
               '~/Library/Saved Application State/com.uncommonplace.Xit.savedState',
             ]
end
