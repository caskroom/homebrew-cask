cask "pext" do
  version "0.32"
  sha256 "1ed99d26a1638c632640bd33d4ac8e7ea410fddcdc6bf4a6e8cfaafb53107140"

  # github.com/Pext/Pext/ was verified as official when first introduced to the cask
  url "https://github.com/Pext/Pext/releases/download/v#{version}/Pext-#{version}.dmg"
  appcast "https://github.com/Pext/Pext/releases.atom"
  name "Pext"
  desc "Python-based extendable tool"
  homepage "https://pext.io/"

  app "Pext.app"
end
