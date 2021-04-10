cask "quickhash" do
  version "3.2.0,2020.08"
  sha256 "8449c5042dd0061515ca5cc83ee24b487a228c7f9263ea44330d3f008cbc1dec"

  url "https://quickhash-gui.org/wp-content/uploads/#{version.after_comma.major}/#{version.after_comma.minor}/QuickHash-GUI-OSX-v#{version.before_comma}.zip"
  name "Quickhash"
  homepage "https://www.quickhash-gui.org/"

  livecheck do
    url "https://www.quickhash-gui.org/downloads/"
    strategy :page_match
    regex(%r{href=.*?/QuickHash-GUI-OSX-v(\d+(?:\.\d+)*)\.zip}i)
  end

  app "Quickhash-GUI.app"
end
