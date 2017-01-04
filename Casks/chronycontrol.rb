cask 'chronycontrol' do
  version '1.1.4'
  sha256 '31fbe11a556befc2943f890d5786bd01270ba754c747b8507f862efe47e9089f'

  url "https://www.whatroute.net/software/chronycontrol-#{version}.zip"
  name 'ChronyControl'
  homepage 'https://whatroute.net/chronycontrol.html'

  app 'ChronyControl.app'

  uninstall launchctl: [
                         'org.tuxfamily.chronyd',
                         'org.tuxfamily.chronyc',
                       ],
            delete:    [
                         '/etc/chrony.d',
                         '/var/db/chrony',
                         '/Library/LaunchDaemons/org.tuxfamily.chronyd',
                         '/Library/LaunchDaemons/org.tuxfamily.chronyc',
                       ]

  zap delete: '/var/log/chrony'
end
