cask 'viscosity' do
  version '1.7.3'
  sha256 'e28e9a3e0f02198eee105d73cc8b867cef6b05a2239974349d1a13e4ece6eadb'

  url "https://swupdate.sparklabs.com/download/mac/release/viscosity/Viscosity%20#{version}.dmg"
  appcast 'https://swupdate.sparklabs.com/appcast/mac/release/viscosity/',
          checkpoint: '328ccdcdabed28c790cb1de6439b175dad597bb36ec6b2df19b52aba63f34a43'
  name 'Viscosity'
  homepage 'https://www.sparklabs.com/viscosity/'

  auto_updates true

  app 'Viscosity.app'

  zap delete: [
                '/Library/Application Support/Viscosity',
                '/Library/LaunchDaemons/com.sparklabs.ViscosityHelper.plist',
                '/Library/PrivilegedHelperTools/com.sparklabs.ViscosityHelper',
                '~/Library/Application Support/Viscosity',
                '~/Library/Caches/com.viscosityvpn.Viscosity',
                '~/Library/Cookies/com.viscosityvpn.Viscosity.binarycookies',
                '~/Library/Preferences/com.viscosityvpn.Viscosity.plist',
              ]
end
