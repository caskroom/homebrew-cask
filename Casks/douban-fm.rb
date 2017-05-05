cask 'douban-fm' do
  version '1.0'
  sha256 'cbd00a0e035004feabf74181730d6a9ee3840da11ecf0e5e5d53094a26663456'

  url "https://github.com/cyrilis/Douban-FM-Express/releases/download/v#{version}/Douban.FM.app.#{version}.zip"
  appcast 'https://github.com/cyrilis/Douban-FM-Express/releases.atom',
          checkpoint: '4ed6a20dc1013aa7c968b031b046ac83cdd65012f87185c6b6f081f7c8147288'
  name 'Douban FM'
  homepage 'https://github.com/cyrilis/Douban-FM-Express'

  app 'Douban FM.app'
end
