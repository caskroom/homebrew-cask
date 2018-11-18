cask 'texshop' do
  version '4.16'
  sha256 'f9d7608d57d43178fa572ddd43b000b1e111eb157709e182421ba664c145b9bf'

  url "https://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.no_dots}.zip"
  appcast 'https://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml'
  name 'TeXShop'
  homepage 'https://pages.uoregon.edu/koch/texshop/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'TeXShop.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texshop.sfl*',
               '~/Library/Application Support/TeXShop',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/TeXShop Help*',
               '~/Library/Caches/TeXShop',
               '~/Library/Preferences/TeXShop.plist',
               '~/Library/TeXShop',
             ]
end
