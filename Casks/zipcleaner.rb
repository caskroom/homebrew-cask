cask "zipcleaner" do
  version :latest
  sha256 :no_check

  url "https://roger-jolly.nl/software/downloads/zipcleaner/ZipCleaner.zip"
  name "ZipCleaner"
  homepage "https://roger-jolly.nl/software/#zipcleaner"

  depends_on macos: "<= :mojave"

  app "ZipCleaner.app"
end
