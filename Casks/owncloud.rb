cask 'owncloud' do
  version '2.5.0.10516,qt5.10.1'
  sha256 '5d59305a432bf6e24f456ff5221c8945c7df7cf0e17680645a156c5cf2f7c767'

  url "https://download.owncloud.com/desktop/stable/ownCloud-#{version.after_comma}-#{version.before_comma}.pkg"
  appcast 'https://github.com/owncloud/client/releases.atom'
  name 'ownCloud'
  homepage 'https://owncloud.com/'

  pkg "ownCloud-#{version.after_comma}-#{version.before_comma}.pkg"

  uninstall pkgutil: [
                       'com.ownCloud.client',
                       'com.owncCloud.finderPlugin',
                     ]
end
