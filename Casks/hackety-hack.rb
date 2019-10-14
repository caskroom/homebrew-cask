cask 'hackety-hack' do
  version '1.0.1'
  sha256 '7b2729a5efbb696e18d55a0030f8d23f075e480f66e085d42079346ddffb92fd'

  # github.com/downloads/hacketyhack/hacketyhack was verified as official when first introduced to the cask
  url "https://github.com/downloads/hacketyhack/hacketyhack/hacketyhack-#{version}.dmg"
  appcast 'https://github.com/hacketyhack/hacketyhack/releases.atom'
  name 'Hackety Hack'
  homepage 'http://www.hackety.com/'

  app 'Hackety Hack.app'

  zap trash: [
               '~/.hacketyhack',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.hackety.hacketyhack.sfl*',
               '~/Library/Caches/org.hackety.hacketyhack',
             ]
end
