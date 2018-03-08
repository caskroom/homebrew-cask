cask 'istat-menus' do
  version '6.10'
  sha256 'ed62915fbace4478cdf8941490e893b3a5851c3f27c3ad8d7d1f62cd4cbea5c8'

  # amazonaws.com/bjango was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bjango/files/istatmenus#{version.major}/istatmenus#{version}.zip"
  name 'iStats Menus'
  homepage 'https://bjango.com/mac/istatmenus/'

  auto_updates true

  app 'iStat Menus.app'

  uninstall delete:    [
                         "/Library/Application Support/iStat Menus #{version.major}",
                         '/Library/PrivilegedHelperTools/com.bjango.istatmenus.installerhelper',
                       ],
            launchctl: [
                         'com.bjango.istatmenus.agent',
                         'com.bjango.istatmenus.daemon',
                         'com.bjango.istatmenusnotifications',
                         'com.bjango.istatmenus.status',
                         'com.bjango.istatmenus.installerhelper',
                       ],
            signal:    [
                         ['TERM', 'com.bjango.iStat-Menus-Notifications'],
                         ['TERM', 'com.bjango.iStatMenusAgent'],
                         ['TERM', 'com.bjango.istatmenusstatus'],
                         ['TERM', 'com.bjango.istatmenus'],
                         ['HUP', 'com.bjango.istatmenus'],
                       ]

  zap trash: [
               '~/Library/Application Support/iStat Menus',
               '~/Library/Application Scripts/com.bjango.istatmenus.iStat-Menus-Widget',
               '~/Library/Caches/com.bjango.istatmenus',
               '~/Library/Caches/com.bjango.istatmenus.status',
               '~/Library/Caches/com.bjango.istatmenus.agent',
               '~/Library/Caches/com.bjango.iStat-Menus-Updater',
               '~/Library/Caches/com.bjango.iStatMenusAgent',
               '~/Library/Caches/iStat Menus',
               '~/Library/Containers/com.bjango.istatmenus.iStat-Menus-Widget',
               '~/Library/Cookies/com.bjango.istatmenus.binarycookies',
               '~/Library/Logs/iStat Menus',
               '~/Library/Preferences/com.bjango.istatmenus.plist',
               "~/Library/Preferences/com.bjango.istatmenus#{version.major}.extras.plist",
               '~/Library/Preferences/com.bjango.istatmenus.status.plist',
               '/Library/Logs/iStat Menus',
               '/Users/Shared/.iStatMenus',
             ]
end
