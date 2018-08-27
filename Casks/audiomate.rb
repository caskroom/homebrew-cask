cask 'audiomate' do
  version '2.2.6'
  sha256 '1be327d0d98d4884ccb9077f60ac9a6ff8cd10df3c3841fc85fde6866462a43e'

  # 9labs.io was verified as official when first introduced to the cask
  url "http://backend.9labs.io/download/audiomate?version=#{version}"
  appcast 'https://backend.9labs.io/appcast/audiomate'
  name 'AudioMate'
  homepage 'https://audiomateapp.com/'

  app 'AudioMate.app'
end
