cask 'coconutbattery' do
  if MacOS.version <= :mavericks
    version '3.3.4'
    sha256 '0edf6bdaf28fb3cc9c242fd916c348fbbae30a5356ddc1d6e5158d50f96d740d'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version.dots_to_underscores}.zip"
  elsif MacOS.version <= :yosemite
    version '3.6.4'
    sha256 '8e289fb4a75cb117fc1d7861020c9ab2384b09dfd18f066c7fadfc9d42c3ac56'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version}.zip"
  else
    version '3.7'
    sha256 '66cdaec7f53f1e9d13c265f0c2e7418f304656a5a46fc9f940a79201006fde9d'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version}.zip"
    appcast 'https://coconut-flavour.com/updates/coconutBattery.xml'
  end

  name 'coconutBattery'
  homepage 'https://www.coconut-flavour.com/coconutbattery/'

  auto_updates true

  app 'coconutBattery.app'

  uninstall launchctl: 'com.coconut-flavour.coconutBattery-Menu',
            quit:      'com.coconut-flavour.coconutBattery-Menu'

  zap trash: [
               '~/Library/Application Support/coconutBattery',
               '~/Library/Caches/com.coconut-flavour.coconutBattery*',
               '~/Library/Group Containers/*.coconut-flavour.coconutBattery',
               '~/Library/Preferences/com.coconut-flavour.coconutBattery.plist',
               '~/Library/Saved Application State/com.coconut-flavour.coconutBattery.savedState',
             ]
end
