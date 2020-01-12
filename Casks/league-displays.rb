cask 'league-displays' do
  version :latest
  sha256 :no_check

  # riotgames.com was verified as official when first introduced to the cask
  url "https://screensaver.riotgames.com/v2/installer/latest/League%20Displays.dmg"
  name 'League Displays'
  homepage 'https://na.leagueoflegends.com/en/featured/league-displays'

  app 'LeagueDisplays.app'

  zap trash: [
       '~/Library/Logs/LeagueDisplays-Configurator.log',
      ],
      rmdir: [
        '~/Library/Application Support/LolScreenSaver',
        '~/Library/Screen Savers/League.saver'
      ]
end
