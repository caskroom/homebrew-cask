cask 'onedrive' do
  version '20.064.0329.0008'
  sha256 '7daa8e0fc0211b52eb31de392dcf0b1225f26fa7aac066d07cd2b565df793fed'

  # oneclient.sfx.ms/Mac/Direct/ was verified as official when first introduced to the cask
  url "https://oneclient.sfx.ms/Mac/Direct/#{version}/OneDrive.pkg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://go.microsoft.com/fwlink/?LinkId=823060'
  name 'OneDrive'
  homepage 'https://onedrive.live.com/'

  auto_updates true
  conflicts_with cask: 'microsoft-office'
  depends_on macos: '>= :sierra'

  pkg 'OneDrive.pkg'

  uninstall delete:    '/Applications/OneDrive.app',
            launchctl: [
                         'com.microsoft.OneDriveUpdaterDaemon',
                         'com.microsoft.OneDriveStandaloneUpdater',
                         'com.microsoft.OneDriveStandaloneUpdaterDaemon',
                       ],
            pkgutil:   'com.microsoft.OneDrive',
            quit:      [
                         'com.microsoft.OneDrive',
                         'com.microsoft.OneDriveUpdater',
                         'com.microsoft.OneDrive.FinderSync',
                       ]

  zap trash: [
               '~/Library/Application Support/OneDrive',
               '~/Library/Application Support/com.microsoft.OneDrive',
               '~/Library/Application Support/com.microsoft.OneDriveUpdater',
               '~/Library/Application Support/OneDriveUpdater',
               '~/Library/Application Scripts/com.microsoft.OneDrive.FinderSync',
               '~/Library/Application Scripts/com.microsoft.OneDriveLauncher',
               '~/Library/Caches/com.microsoft.OneDrive',
               '~/Library/Caches/com.microsoft.OneDriveUpdater',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.microsoft.OneDrive',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.microsoft.OneDriveUpdater',
               '~/Library/Containers/com.microsoft.OneDriveLauncher',
               '~/Library/Containers/com.microsoft.OneDrive.FinderSync',
               '~/Library/Cookies/com.microsoft.OneDrive.binarycookies',
               '~/Library/Cookies/com.microsoft.OneDriveUpdater.binarycookies',
               '~/Library/Group Containers/*.OneDriveStandaloneSuite',
               '~/Library/Logs/OneDrive',
               '~/Library/Preferences/com.microsoft.OneDrive.plist',
               '~/Library/Preferences/com.microsoft.OneDriveUpdater.plist',
               '~/Library/Preferences/*.OneDriveStandaloneSuite.plist',
             ]
end
