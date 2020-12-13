cask "burn" do
  version "2.7.10"
  sha256 "2cffd7b897a906d1aac1cbb6b876b3cb52a403a5d340e620cb9bbfd02242680d"

  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/burn-#{version}.zip",
      verified: "downloads.sourceforge.net/burn-osx/"
  appcast "https://sourceforge.net/projects/burn-osx/rss?path=/Burn"
  name "Burn"
  desc "CD burning application"
  homepage "https://burn-osx.sourceforge.io/"

  app "Burn.localized/Burn.app"
end
