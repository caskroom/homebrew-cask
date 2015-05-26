cask :v1 => 'flickr-uploadr' do
  version :latest
  sha256 :no_check

  url 'https://downloads.flickr.com/uploadr/FlickrUploadr.dmg'
  name 'Flickr Uploadr'
  homepage 'http://www.flickr.com/tools/'
  license :gratis

  app 'Flickr Uploadr.app'
end
