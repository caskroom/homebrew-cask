class Growlnotify < Cask
  version '2.1'
  sha256 'eec601488b19c9e9b9cb7f0081638436518bce782d079f6e43ddc195727c04ca'

  url 'https://growl.cachefly.net/GrowlNotify-2.1.zip'
  homepage 'http://growl.info/downloads'

  pkg 'GrowlNotify.pkg'
  uninstall :pkgutil => 'info.growl.growlnotify.*pkg'
end
