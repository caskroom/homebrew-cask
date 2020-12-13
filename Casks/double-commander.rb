cask "double-commander" do
  version "0.9.9-9478"
  sha256 "741703155b71ee0f5b73c5f220b394e220d8a5c32ad9e3e59740f839cb46e340"

  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version}.qt.x86_64.dmg",
      verified: "downloads.sourceforge.net/doublecmd/"
  appcast "https://sourceforge.net/projects/doublecmd/rss"
  name "Double Commander"
  homepage "https://doublecmd.sourceforge.io/"

  app "Double Commander.app"
end
