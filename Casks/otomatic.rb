cask 'otomatic' do
  version '1.0.7.148'
  sha256 'd0eacd15d8782cb379b0429b85418e6d436b5d07342e95af9a5b8116170a67d5'

  url "http://otomatic.codingcurious.com/update/archive/Otomatic.#{version}.zip"
  name 'Otomatic'
  homepage 'http://codingcurious.com/otomatic/'
  license :commercial

  auto_updates true

  app 'Otomatic.app'

  zap delete: [
                '~/Library/Application\ Support/Otomatic',
                '~/Library/Application\ Support/Otomatic\ Helper',
                '~/Library/Caches/com.codingcurious.Otomatic',
                '~/Library/Logs/Otomatic\ Helper',
                '~/Library/Preferences/com.codingcurious.Otomatic.plist',
                '~/Library/Preferences/com.codingcurious.Otomatic-Helper.plist',
              ]
end
