cask "understand" do
  version "6.0.1060"
  sha256 "34c8384a4a7541d42573c34deb6ab04efe471e0f1194ff2c455c109376e8a1b9"

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  name "SciTools Understand"
  desc "Code visualization and exploration tool"
  homepage "https://scitools.com/features/"

  livecheck do
    url "https://licensing.scitools.com/download/getChecksums/Understand/#{version.patch}"
    strategy :page_match
    regex(%r{href=.*?/Understand-(\d+(?:\.\d+)*)-MacOSX-x86\.dmg}i)
  end

  app "Understand.app"
end
