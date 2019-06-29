cask 'openecard' do
  version '1.3.0'
  sha256 'b23d918029403591eb45ac8d52e58df50c1bcb3429b8394173b9063334fc52b1'

  # github.com/ecsec/open-ecard was verified as official when first introduced to the cask
  url "https://github.com/ecsec/open-ecard/releases/download/#{version}/Open-eCard-App-#{version}.dmg"
  appcast 'https://github.com/ecsec/open-ecard/releases.atom'
  name 'Open eCard'
  homepage 'https://www.openecard.org/'

  pkg 'Open eCard App.pkg'

  uninstall delete: "#{appdir}/Open-eCard-App.app"

  zap trash: '~/.openecard/logs/richclient_info.log'
end
