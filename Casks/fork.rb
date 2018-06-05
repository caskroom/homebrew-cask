cask 'fork' do
  version '1.0.67.5'
  sha256 'f02fc78fe635dbd2a8f2e93e6053d58907d6b4a9a25be30f67f0eb3cc2cbb653'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: '84ec63c7dbaa75d07f2d0fd8d98fb750b9005883d70432e4485a8f74f7e7c609'
  name 'Fork'
  homepage 'https://git-fork.com/'

  auto_updates true

  app 'Fork.app'

  zap trash: [
               '~/Library/Application Support/com.DanPristupov.Fork',
               '~/Library/Caches/com.DanPristupov.Fork',
               '~/Library/Preferences/com.DanPristupov.Fork.plist',
               '~/Library/Saved Application State/com.DanPristupov.Fork.savedState',
             ]
end
