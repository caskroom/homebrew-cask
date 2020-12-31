cask "espresso" do
  version "5.4.1"
  sha256 "c28b93b6728869d47d2c277839079c1a1bbd88497d9ae0649800a50f51776072"

  url "https://downloads.kangacode.com/Espresso/Espresso_#{version}.zip",
      verified: "downloads.kangacode.com/"
  appcast "https://espressoapp.com/updates/"
  name "Espresso"
  desc "Website editor focusing on flair and efficiency"
  homepage "https://espressoapp.com/"

  depends_on macos: ">= :sierra"

  app "Espresso.app"
end
