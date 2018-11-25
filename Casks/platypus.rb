cask 'platypus' do
  version '5.3'
  sha256 'efc66e943e6327896d0c1b82b0c1798c9ea17cffa03581e4949541c30d9833b0'

  url "https://sveinbjorn.org/files/software/platypus/platypus#{version}.zip"
  appcast 'https://www.sveinbjorn.org/files/appcasts/PlatypusAppcast.xml'
  name 'Platypus'
  homepage 'https://sveinbjorn.org/platypus'

  auto_updates true

  app "Platypus-#{version}/Platypus.app"
end
