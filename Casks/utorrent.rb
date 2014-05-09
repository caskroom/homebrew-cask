class Utorrent < Cask
  url 'http://download-new.utorrent.com/endpoint/utmac/os/osx/track/stable/'
  homepage 'http://www.utorrent.com/'
  version 'latest'
  caskroom_only true
  sha256 :no_check
  caveats do
    manual_installer 'uTorrent-Installer.app'
  end
end
