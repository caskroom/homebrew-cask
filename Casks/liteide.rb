cask 'liteide' do
  version '36.3'
  sha256 '61b028c893dcbabf2412d9c76d264208e1a29636b25dafeacb34f9fc73109b55'

  # github.com/visualfc/liteide was verified as official when first introduced to the cask
  url "https://github.com/visualfc/liteide/releases/download/x#{version}/liteidex#{version}.macos-qt5.12.5.zip"
  appcast 'https://github.com/visualfc/liteide/releases.atom'
  name 'LiteIDE'
  homepage 'http://liteide.org/'

  depends_on macos: '>= :sierra'

  app 'liteide/LiteIDE.app'
end
