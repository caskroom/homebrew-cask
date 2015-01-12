cask :v1 => 'doxygen' do
  version '1.8.7'
  sha256 'd4d23df0372362358d26ab3c3c13d701b1f1751a7b80d427742665739a4f49c0'

  url "ftp://ftp.stack.nl/pub/users/dimitri/Doxygen-#{version}.dmg"
  name 'Doxygen'
  homepage 'http://www.stack.nl/~dimitri/doxygen/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Doxygen.app'
end
