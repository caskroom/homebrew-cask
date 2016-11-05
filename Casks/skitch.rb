cask 'skitch' do
  version '2.8'
  sha256 '55a248250ee81011849b1f6c89c39391fddecf55375876d2d89966584cba4cbe'

  url "https://cdn1.evernote.com/skitch/mac/release/Skitch-#{version}.zip"
  name 'Skitch'
  homepage 'https://evernote.com/skitch/'

  auto_updates true

  app 'Skitch.app'

  zap delete: [
                '~/Library/Preferences/com.plasq.skitch.plist',
                '~/Library/Preferences/com.plasq.skitch.history',
              ]
end
