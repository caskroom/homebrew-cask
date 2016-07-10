cask 'diumoo' do
  version '1.5.0'
  sha256 'f6a6628dab6c64752f6827e453368c18dcd06962ee0823d51d51c439cf7e04b6'

  # github.com/shanzi/diumoo was verified as official when first introduced to the cask
  url 'https://github.com/shanzi/diumoo/releases/download/v#{version}/diumoo.zip'
  appcast 'https://github.com/diumoo/diumoo.github.com/releases.atom',
          checkpoint: 'cf1c64c1e44fcbc61b32c61dbafb347ea7a1911d493f0cdca8a8a3911def29cf'
  name 'diumoo'
  homepage 'http://diumoo.net/'
  license :gratis

  app 'diumoo.app'
end
