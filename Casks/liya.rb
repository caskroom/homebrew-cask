cask "liya" do
  version "5.0.5,9"
  sha256 :no_check

  url "https://cutedgesystems.com/downloads/Liya.zip"
  name "Liya"
  desc "Access three database systems simultaneously from a single visual interface"
  homepage "https://cutedgesystems.com/software/liya/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :catalina"

  app "Liya.app"
end
