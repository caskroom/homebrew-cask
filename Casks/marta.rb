cask 'marta' do
  version '0.5'
  sha256 '5ac09cf6080323c079ab508bbd90bf436f219c5e87b65d5155e2d9fe3d99d61e'

  url "https://marta.yanex.org/updates/Marta-#{version}.dmg"
  appcast 'https://marta.yanex.org/updates/appcast.xml'
  name 'Marta File Manager'
  homepage 'https://marta.yanex.org/'

  app 'Marta.app'

  zap trash: [
               '~/Library/Application Support/org.yanex.marta',
               '~/Library/Caches/org.yanex.marta',
               '~/Library/Preferences/org.yanex.marta.plist',
               '~/Library/Saved Application State/org.yanex.marta.savedState',
             ]
end
