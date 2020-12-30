cask "doomsday-engine" do
  version "2.3.0"
  sha256 "83b5d3f13e97119ca347a4f463adbb4a96a4b10f5f4f8367da2856ad18305be5"

  url "https://files.dengine.net/archive/doomsday_#{version}_x86_64.dmg"
  appcast "http://api.dengine.net/1/builds/feed"
  name "Doomsday Engine"
  homepage "https://dengine.net/"

  app "Doomsday.app"
  app "Doomsday Shell.app"
end
