cask 'kubernetic' do
  version '2.8.1'
  sha256 '30c3549599fa770ded0a5e569e329595a22978cbdb4a9d8d8cd2c61d6aa973b1'

  # kubernetic.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://kubernetic.s3.amazonaws.com/Kubernetic-#{version}.dmg"
  appcast 'https://kubernetic.s3.amazonaws.com/latest-mac.yml'
  name 'Kubernetic'
  homepage 'https://kubernetic.com/'

  app 'Kubernetic.app'

  uninstall signal: [
                      ['TERM', 'com.kubernetic.desktop.helper'],
                      ['TERM', 'com.kubernetic.desktop'],
                    ]

  zap trash: [
               '~/.kubernetic',
               '~/Library/Application Support/Kubernetic',
               '~/Library/Logs/Kubernetic',
               '~/Library/Preferences/com.kubernetic.desktop.*',
               '~/Library/Saved Application State/com.kubernetic.desktop.*',
             ]
end
