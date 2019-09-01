cask 'mendeley' do
  version '1.19.5'
  sha256 'd315dfdc87eca7788d0cd8a172487d202c59df700eb91e65b97efbac6b8d6578'

  url "https://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.mendeley.com/autoupdates/installer/Mac-x64/stable-incoming'
  name 'Mendeley'
  homepage 'https://www.mendeley.com/'

  app 'Mendeley Desktop.app'
end
