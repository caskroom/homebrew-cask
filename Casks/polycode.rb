cask 'polycode' do
  version '0.8.4'
  sha256 '9dfc56255fde79684376d5955142578f0ff7e36d1b59e97f58e243e27c24d698'

  url "http://polycode.org/download/content/PolycodeDarwin_#{version}.zip"
  appcast 'https://github.com/ivansafrin/Polycode/releases.atom'
  name 'Polycode'
  homepage 'http://polycode.org/'

  app 'Darwin/Polycode.app'
end
