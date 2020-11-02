cask "chatterino" do
  version "2.2.2"
  sha256 "00540c54962d0a90e58898a32472638810da544071417a19c6998c9e80e0af58"

  url "https://chatterino.com/download/#{version}/Chatterino.dmg"
  appcast "https://chatterino.com/changelog"
  name "Chatterino"
  desc "Chat client for twitch chat. It aims to be an improved version of the twitch web chat"
  homepage "https://chatterino.com/"

  app "chatterino.app"
end
