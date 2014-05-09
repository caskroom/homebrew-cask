class Houdahspot < Cask
  url 'http://www.houdah.com/houdahSpot/download_assets/HoudahSpot_latest.zip'
  homepage 'http://www.houdah.com/houdahSpot/'
  version 'latest'
  sha256 :no_check
  link 'HoudahSpot.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.houdah.HoudahSpot', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
