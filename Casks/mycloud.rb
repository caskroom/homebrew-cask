cask 'mycloud' do
  version '18.2.17'
  sha256 'b464f8f6bd99b79bd54b304d8a17220726ca949f5ed9b33659c956f6ca9c26c6'

  # download-syncclient-mac.prod.mdl.swisscom.ch was verified as official when first introduced to the cask
  url "https://download-syncclient-mac.prod.mdl.swisscom.ch/mac/myCloudDesktop-installer-#{version}.dmg"
  name 'Swisscom myCloud Desktop'
  homepage 'https://desktop.mycloud.ch/'

  container nested: 'myCloudDesktop-installer.app/Contents/Resources/app/application.zip'

  app 'myCloudDesktop.app'

  uninstall login_item: 'myCloudDesktop',
            quit:       'ch.swisscom.mycloud.desktop.finder',
            signal:     ['TERM', 'ch.swisscom.mycloud.desktop']

  zap trash: [
               '~/Library/Application Support/myCloudDesktop',
               '~/Library/Preferences/ch.swisscom.mycloud.desktop.plist',
               '~/Library/Preferences/ch.swisscom.mycloud.desktop.helper.plist',
             ]
end
