cask 'awa' do
  version '1.4.2'
  sha256 :no_check

  # download-d.awa.io was verified as official when first introduced to the cask
  url 'https://download-d.awa.io/mac/stable/AWASetup-v1.4.2.dmg'
  name 'AWA'
  homepage 'https://awa.fm/'

  auto_updates true

  app 'AWA.app'

  uninstall launchctl: 'fm.awa.liverpool',
            quit:      'fm.awa.liverpool'

  zap trash: [
               '~/Library/Application Support/AWA',
               '~/Library/Preferences/fm.awa.liverpool.plist',
               '~/Library/Preferences/fm.awa.liverpool.helper.plist',
               '~/Library/Saved Application State/fm.awa.liverpool.savedState',
             ]
end
