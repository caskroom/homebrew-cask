class UbuntuOne < Cask
  version :latest
  sha256 :no_check

  url 'https://one.ubuntu.com/download/mac/client'
  homepage 'http://one.ubuntu.com'

  app 'Ubuntu One.app'
end
