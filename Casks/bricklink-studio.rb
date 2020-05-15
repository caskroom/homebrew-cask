cask 'bricklink-studio' do
  version :latest
  sha256 :no_check

  # blstudio.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://blstudio.s3.amazonaws.com/Studio2.0/Studio+2.0.pkg'
  name 'Stud.io'
  homepage 'https://studio.bricklink.com/v2/build/studio.page'

  pkg 'Studio+2.0.pkg'

  uninstall pkgutil: 'com.bricklink.pkg.Studio'
end
