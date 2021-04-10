cask "wraparound" do
  version "2.0-2021"
  sha256 "4efd0a5051b2ab0487e7d3d4f33093f0d6f23ff0d203d0fc3d66facd6e893474"

  url "https://www.digicowsoftware.com/downloads/Wraparound#{version}.zip"
  name "Wraparound"
  homepage "https://www.digicowsoftware.com/detail?_app=Wraparound"

  livecheck do
    url "https://www.digicowsoftware.com/detail?_app=Wraparound"
    strategy :page_match
    regex(%r{href=.*?/Wraparound(\d+(?:\.\d+)*)\.zip}i)
  end

  app "Wraparound.app"
end
