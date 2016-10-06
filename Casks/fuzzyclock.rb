cask 'fuzzyclock' do
  version :latest
  sha256 :no_check

  url 'https://mschmidt.me/macOS/FuzzyClock.zip'
  name 'FuzzyClock'
  homepage 'https://mschmidt.me/osx.html'
  license :bsd

  app 'FuzzyClock.app'
end
