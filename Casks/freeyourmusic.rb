cask "freeyourmusic" do
  version "5.6.7"
  sha256 "73d57a5da519a182d384b7516692c1b2b9d6fec88e92e239f00e45fa3330e11c"

  url "https://dzqeytqqx888.cloudfront.net/FreeYourMusic-#{version}.dmg",
      verified: "dzqeytqqx888.cloudfront.net/"
  appcast "https://stamp-live.s3.amazonaws.com/latest-mac.yml"
  name "FreeYourMusic⁩"
  homepage "https://freeyourmusic.com/"

  app "FreeYourMusic.app"
end
