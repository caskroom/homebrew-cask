cask "convert3dgui" do
  version "1.0.0"
  sha256 "f90fc3732578e9c9378e6d9340611ab93955f8ee182af1a59edac55f8df4b728"
  
  url "https://downloads.sourceforge.net/c3d/c3d-#{version}-MacOS-x86_64.dmg"
  appcast "https://sourceforge.net/projects/c3d/rss?path=/c3d/#{version}"
  name "Convert3DGUI"
  desc "Command-line tool for converting 3D images between common file formats"
  homepage "https://sourceforge.net/projects/c3d"

  app "Convert3DGUI.app"

  zap trash: [
    "~/Library/Saved Application State/org.itksnap.c3dgui.savedState",
  ]
end
