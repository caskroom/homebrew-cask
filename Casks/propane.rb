cask :v1 => 'propane' do
  version :latest
  sha256 :no_check

  url 'https://propaneapp.com/appcast/Propane.zip'
  appcast 'http://propaneapp.com/appcast/release.xml'
  name 'Propane'
  homepage 'http://propaneapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Propane.app'
end
