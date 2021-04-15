cask "sensible-side-buttons" do
  version "1.0.6"
  sha256 "1f2b3aefc47ac1ff8ce1e83af3ddab814dd7c6e6b974b73dce3694ec7435881b"
  
  url "https://github.com/archagon/sensible-side-buttons/releases/download/#{version}/SensibleSideButtons-#{version}.dmg"
  desc "Actually functional side navigation buttons on your third-party mice"
  name "SensibleSideButtons"
  homepage "https://sensible-side-buttons.archagon.net/"

  app "SensibleSideButtons.app"
end
