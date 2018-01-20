cask 'aqua-data-studio' do
  version '18.5.0'
  sha256 '744955217e65c21d64ed0b7f5974e6cb75fb66ef2e2bde59c8ad384b7169d140'

  url "http://www.aquafold.com/download/v#{version.major_minor}.0/osx/ads-osx-#{version}.tar.gz"
  appcast 'http://www.aquafold.com/download/',
          checkpoint: '5ff24a33622616e458cffce5236e0605e8d46a9ffcf5a0a6ab5ad768496587ff'
  name 'Aquafold Aqua Data Studio'
  homepage 'http://www.aquafold.com/aquadatastudio.html'

  app 'Aqua Data Studio.app'
end
