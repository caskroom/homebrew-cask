cask 'standard-notes' do
  version '3.0.3'
  sha256 '93c7d5f8d633b864a011ce16ae6847beaf551dd0aec5aaabfc62ac3f747bb281'

  # github.com/standardnotes/desktop was verified as official when first introduced to the cask
  url "https://github.com/standardnotes/desktop/releases/download/v#{version}/Standard-Notes-#{version}-mac.zip"
  appcast 'https://github.com/standardnotes/desktop/releases.atom'
  name 'Standard Notes'
  homepage 'https://standardnotes.org/'

  auto_updates true

  app 'Standard Notes.app'

  zap trash: [
               '~/Library/Application Support/Standard Notes',
               '~/Library/Caches/org.standardnotes.standardnotes',
               '~/Library/Caches/org.standardnotes.standardnotes.ShipIt',
               '~/Library/Preferences/org.standardnotes.standardnotes.plist',
               '~/Library/Preferences/org.standardnotes.standardnotes.helper.plist',
               '~/Library/Saved Application State/org.standardnotes.standardnotes.savedState',
             ]
end
