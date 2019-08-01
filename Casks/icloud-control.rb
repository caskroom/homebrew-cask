cask 'icloud-control' do
  version '1.2.0'
  sha256 '75d7c2d14a5af9b25371cee252c60f8a3ebaaaaf89514130f91c6b322bfdfa2d'

  url "https://github.com/Obbut/iCloud-Control/releases/download/#{version}/iCloud.Control.zip"
  appcast 'https://github.com/Obbut/iCloud-Control/releases.atom'
  name 'iCloud Control'
  homepage 'https://github.com/Obbut/iCloud-Control'

  app 'iCloud Control.app'
end
