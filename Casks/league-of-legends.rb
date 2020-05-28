cask 'league-of-legends' do
  version :latest
  sha256 :no_check

  # riotgamespatcher-a.akamaihd.net/ was verified as official when first introduced to the cask
  url 'https://riotgamespatcher-a.akamaihd.net/releases/Maclive/installer/deploy/League%20of%20Legends%20installer%20NA.dmg'
  name 'League of Legends'
  homepage 'https://eune.leagueoflegends.com/en/'

  app 'League of Legends.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.riotgames.maccontainer.sfl*',
               '~/Library/Saved Application State/com.riotgames.LeagueofLegends.GameClient.savedState',
               '~/Library/Saved Application State/com.riotgames.LeagueofLegends.LeagueClientUx.savedState',
               '~/Library/Preferences/com.riotgames.LeagueofLegends.LeagueClientUxHelper.plist',
               '~/Library/Caches/com.riotgames.LeagueofLegends.LeagueClient',
               '/Users/Shared/Riot Games/RiotClientInstalls.json',
               '/Users/Shared/Riot Games/com.riot.riotclient.checkinstalls-lock',
             ],
      rmdir: '~/Documents/League of Legends',
      rmdir: '~/../Shared/Riot Games/Riot Client.app',
      rmdir: '~/../Shared/Riot Games/Metadata'
end
