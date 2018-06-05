cask 'isyncr' do
  if MacOS.version <= :lion
    version '5.0.8'
    sha256 '1b1c0e6054b890fa7dd903cc680fd2543bc6b40b34cde2d23f4c2e355dcffb87'
  elsif MacOS.version <= :sierra
    version '5.6.5'
    sha256 '8cd6b1c96a902d8810e52aab6a980424370237617bfd3ff574367ff1ce8d4f4e'
  else
    version '5.14.0'
    sha256 '68e65554b12083c35b0180c6535cefcc7897c0aa4902848dcf706459ecfab3ad'
  end

  url "http://www.jrtstudio.com/files/iSyncr%20Desktop%20#{version}.pkg"
  name 'iSyncr Desktop'
  homepage 'http://www.jrtstudio.com/iSyncr-iTunes-for-Android'

  pkg "iSyncr Desktop #{version}.pkg"

  uninstall pkgutil: 'com.jrtstudio.iSyncrDesktop',
            quit:    'com.JRTStudio.iSyncrWiFi'
end
