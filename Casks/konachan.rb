cask 'konachan' do
  version '1.0.1'
  sha256 '79a9bdee98cb01bc43f38995698d94b519061e4349368e0966ae443aa80a9c5d'

  url "https://github.com/yaqinking/Konachan/releases/download/v#{version}/Konachan.app.zip"
  appcast 'https://github.com/yaqinking/Konachan/releases.atom'
  name 'Konachan'
  homepage 'https://github.com/yaqinking/Konachan'

  app 'Konachan.app'
end
