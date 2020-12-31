cask "mjml" do
  version "3.0.2"
  sha256 "ab7118386b9a39d34ebf9e4101dac640a7b59bc3eee499500fa51cd7531dc307"

  url "https://github.com/mjmlio/mjml-app/releases/download/v#{version}/mjml-app-#{version}-mac.dmg",
      verified: "github.com/mjmlio/mjml-app/"
  appcast "https://github.com/mjmlio/mjml-app/releases.atom"
  name "MJML"
  desc "Desktop app for MJML"
  homepage "https://mjmlio.github.io/mjml-app/"

  app "MJML.app"
end
