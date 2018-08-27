cask 'keytty' do
  version '1.2.4,1510374995'
  sha256 'ff6b8fa7d919e0f83ffe2a6787c998afda7bdf8541f679aa4cfcd0c7e5aafa8c'

  # dl.devmate.com/com.keytty.Keytty was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.keytty.Keytty/#{version.before_comma}/#{version.after_comma}/keytty-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.keytty.Keytty.xml'
  name 'Keytty'
  homepage 'https://keytty.com/'

  app 'Keytty.app'

  uninstall quit: 'com.keytty.Keytty'

  zap trash: [
               '~/Library/Preferences/com.keytty.Keytty.plist',
               '~/Library/Application Support/Keytty',
               '~/Library/Caches/com.keytty.Keytty',
             ]
end
