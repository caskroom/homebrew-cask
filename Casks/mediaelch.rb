cask 'mediaelch' do
  version '2.4.2'
  sha256 'f82d4c157ef64e25529744fb962771ce678a9e2e3a94b18b3d398dfa5b8b9452'

  url "http://www.kvibes.de/releases/mediaelch/#{version}/MediaElch-#{version}.dmg"
  appcast 'http://www.kvibes.de/en/mediaelch/download/',
          checkpoint: '854fb4d8338181c35ea300ddf69aeb254674c20bcf6b94eb962170e3f259011d'
  name 'MediaElch'
  homepage 'http://www.kvibes.de/en/mediaelch/'

  app 'MediaElch.app'
end
