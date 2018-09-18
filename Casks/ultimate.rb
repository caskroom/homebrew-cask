cask 'ultimate' do
  version '3.0.10.918'
  sha256 '9030e7e7a305c32cdad46ba829a4462b675b783476e7277a13b23121f52738fc'

  url 'http://download.epubor.com/epubor_ultimate.zip'
  name 'Ultimate Converter'
  homepage 'https://www.epubor.com/'

  container nested: "epubor_ultimate/Ultimate_v#{version}.dmg"

  app 'Ultimate.app'
end
