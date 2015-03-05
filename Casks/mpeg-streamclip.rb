cask :v1 => 'mpeg-streamclip' do
  version '1.9.2'
  sha256 'f539e527a7232a9ac4398c0d3e7730010058b300c8d7fd33c4baf8c9ac232b85'

  # alfanet.it is the official download host per the vendor homepage
  url "http://www.alfanet.it/squared5/MPEG_Streamclip_#{version}.dmg"
  homepage 'http://www.squared5.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MPEG Streamclip.app'
end
