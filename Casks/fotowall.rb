cask 'fotowall' do
  version '0.8.2'
  sha256 'f49ad020eb6d36b9ad5492edd24ce608aef4466b727b5d0811ed4218b35d0c8c'

  # storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/fotowall was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/fotowall/Fotowall-#{version}-OSX.dmg"
  appcast 'https://www.enricoros.com/opensource/fotowall/download/changelogs/'
  name 'Fotowall'
  homepage 'https://www.enricoros.com/opensource/fotowall/'

  app 'Fotowall.app'

  caveats do
    discontinued
  end
end
