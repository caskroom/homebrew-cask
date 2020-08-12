cask "outline" do
  version "3.2007.1"
  sha256 "8e5b231d0a33b0fca5be533b7a1fd546aa699515bc93f349991d0d186c17ceae"

  url "http://static.outline.ws/versions/Outline_#{version}.zip"
  appcast "https://gorillized.s3.amazonaws.com/versions/update_channel.xml"
  name "Outline"
  homepage "http://outline.ws/"

  app "Outline.app"
end
