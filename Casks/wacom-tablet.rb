cask :v1 => 'wacom-tablet' do
  version '6.3.11w3'
  sha256 'e96949fe4bd09e2edc9e47029f35e101276a21b493cc63d5e9b03a749f350062'

  url "http://cdn.wacom.com/u/productsupport/drivers/mac/professional/WacomTablet_#{version}.dmg"
  homepage 'http://www.wacom.com/'
  license :gratis

  pkg 'Install Wacom Tablet.pkg'

  uninstall :launchctl => 'com.wacom.wacomtablet',
            :quit => [
                      'com.wacom.TabletDriver',
                      'com.wacom.WacomTabletDriver',
                      'com.wacom.WacomTouchDriver',
                     ],
            :kext => [
                      'com.wacom.kext.ftdi',
                      'com.wacom.kext.wacomtablet',
                      'com.silabs.driver.CP210xVCPDriver',
                      'com.silabs.driver.CP210xVCPDriver64',
                      ],
            :pkgutil => 'com.wacom.TabletInstaller',
            :delete => '/Applications/Wacom Tablet.localized'

  zap :delete =>  [
                    '~/Library//Preferences/com.wacom.wacomtablet.prefs',
                    '~/Library//Preferences/com.wacom.wacomtouch.prefs'
                  ]
end
