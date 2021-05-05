cask "waves-central" do
  version "12.0.19"
  sha256 :no_check

  url "https://cf-installers.waves.com/WavesCentral/Install_Waves_Central.dmg"
  name "Waves Central"
  desc "Client to install and activate Waves products"
  homepage "https://www.waves.com/"

  app "Waves Central.app"

  zap trash: [
    "~/Library/Application Support/Waves Central",
    "~/Library/Application Support/Waves Audio",
    "~/Library/Saved Application State/com.WavesAudio.central.savedState",
    "~/Library/Preferences/com.WavesAudio.central.plist",
  ]
end
