cask :v1 => 'repetier-host' do
  version '0.56'
  sha256 '0d4b43ec7bec5ac85133d00e1a2cf61956ef90abc255c253029e0ef26160adfa'

  url 'http://www.repetier.com/w/?wpdmdl=1777'
  appcast 'http://www.repetier.com/updates/rhm/rhm-appcast.xml',
          :sha256 => '9d15e121da41de29d397df57785bbdfcaa7f93fed75c90d6c128b1808b427fc4'
  homepage 'http://www.repetier.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Repetier-Host Mac.app'
end
