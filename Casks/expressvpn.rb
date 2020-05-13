cask 'expressvpn' do
  version '7.5.6.4'
  sha256 '0d2c6e4072b543315662e874908c402932d2d09c06fdeb0bd7521b2d858aa681'

  url "https://download.expressvpn.xyz/clients/mac/expressvpn_mac_#{version}_release.pkg"
  appcast 'https://www.expressvpn.xyz/vpn-software/vpn-mac'
  name 'ExpressVPN'
  homepage 'https://www.expressvpn.xyz/vpn-software/vpn-mac/'

  auto_updates true

  pkg "expressvpn_mac_#{version}_release.pkg"

  uninstall pkgutil:   'com.expressvpn.ExpressVPN',
            launchctl: [
                         'com.expressvpn.ExpressVPN.agent',
                         'com.expressvpn.ExpressVPN.update',
                       ]
end
