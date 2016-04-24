cask 'voxengo-span' do
  version '2.10'
  sha256 '09f5a195145b5dff81b095bae8af9f3d98e301debe8a0f7732684fd479b20185'

  url "http://www.voxengo.com/files/VoxengoSPAN_#{version.delete('.')}_Mac_VST_VST3_setup.dmg"
  name 'Voxengo SPAN'
  homepage 'http://www.voxengo.com/product/span/'
  license :gratis

  vst_plugin 'SPAN.vst'
end
