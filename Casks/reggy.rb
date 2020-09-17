cask "reggy" do
  version "1.3"
  sha256 "5a4d72158bc524ab2f21c6cfad7b703f413707d9d078ec1923c268b110ff8dda"

  # github.com/downloads/samsouder/reggy/ was verified as official when first introduced to the cask
  url "https://github.com/downloads/samsouder/reggy/Reggy_v#{version}.tbz"
  appcast "http://reggyapp.com/appcast.xml"
  name "Reggy"
  desc "Interactive regular expression validator and tester"
  homepage "http://reggyapp.com/"

  app "Reggy.app"
end
