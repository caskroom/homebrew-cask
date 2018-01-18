cask 'elan' do
  version '5.1'
  sha256 '19f6772189ed7fbff29913aa459a5eae3d84ee2159c5c9e39e6f834cce90bd35'

  url "http://www.mpi.nl/tools/elan/ELAN_#{version.dots_to_hyphens}_mac.zip"
  name 'ELAN'
  homepage 'https://tla.mpi.nl/tools/tla-tools/elan/'

  app "ELAN_#{version}.app"
end
