cask "padloc" do
  version "3.1.3"
  sha256 "168dc11c372db5d9c09a0283cd19840d6dac6f76ec241ed400620103dd53b36a"

  # github.com/padloc/padloc/ was verified as official when first introduced to the cask
  url "https://github.com/padloc/padloc/releases/download/v#{version}/Padloc-#{version}.dmg"
  appcast "https://github.com/padloc/padloc/releases.atom"
  name "Padloc"
  desc "Modern password manager"
  homepage "https://padloc.app/"

  app "Padloc.app"

  zap trash: [
    "~/Library/Application Support/Caches/padloc-updater",
    "~/Library/Application Support/Padloc",
  ]
end
