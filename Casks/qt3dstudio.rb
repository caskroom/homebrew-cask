cask "qt3dstudio" do
  version "2.6.0"
  sha256 "840333076975954923dbc1bfc5833521f228a4e1408d846f42acd57d7e32f65b"

  url "https://download.qt.io/official_releases/qt3dstudio/#{version.major_minor}/qt-3dstudio-opensource-mac-x64-#{version}.dmg"
  name "Qt 3D Studio"
  homepage "https://www.qt.io/developers/"

  livecheck do
    url "https://download.qt.io/official_releases/qt3dstudio/"
    strategy :page_match
    regex(%r{href=.*?/qt-3dstudio-opensource-mac-x64-(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  installer manual: "qt-3dstudio-opensource-mac-x64-#{version}.app"

  uninstall delete: "~/Applications/qt3dstudio-#{version}"
end
