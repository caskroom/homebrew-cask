cask 'secondbar' do
  version '1.1'
  sha256 '1f2a9d837bc66c93ed2f7a1d83ef95c44888cd266ffb7982ade14f91d996d6a6'

  # boastr.de is the official download host per the vendor homepage
  url 'http://boastr.de/SecondBar.zip'
  appcast 'https://blog.boastr.net/secondbar/appcast.xml',
          :sha256 => '1b991a6242ac7922bc4e76db810c6fea9ce63c1bc49e162b94e0ea2b250f2e4a'
  name 'SecondBar'
  homepage 'https://blog.boastr.net/?page_id=79'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SecondBar.app'
end
