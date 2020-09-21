cask "archi" do
  version "4.7.1"
  sha256 "19fa57ef812949963e1af5cc2516fc5f544f6e86dd69bd5608794e11935ee07d"

  url "https://www.archimatetool.com/downloads/71cb57dd/Archi-Mac-#{version}.zip"
  appcast "https://github.com/archimatetool/archi/releases.atom"
  name "Archimate modeling"
  desc "Open source modelling toolkit to create ArchiMate 3.1 and sketches"
  homepage "https://www.archimatetool.com/"

  auto_updates true

  app "Archi"
end
