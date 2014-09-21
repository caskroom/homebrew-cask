class Openzfs < Cask
  version '1.3.0'
  sha256 'a0030181a91ecace2d31cfab26d10b2284602e2b442f71a344a9da11165cb6c7'

  url 'https://openzfsonosx.org/w/images/0/0d/OpenZFS_on_OS_X_1.3.0.dmg'
  homepage 'https://openzfsonosx.org'

  pkg 'OpenZFS on OS X 1.3.0 Mavericks or higher.pkg'
  uninstall :pkgutil => 'net.lundman.openzfs.109.pkg'
end
