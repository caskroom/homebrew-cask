cask "serial" do
  version "2.0.7"
  sha256 "8288c8a5b7ca84de74d21f33a1304827075d1886baffb6fc2b9f45cac27ec601"

  url "https://download.decisivetactics.com/downloads/serial/Serial_#{version}.zip"
  name "Serial"
  desc "Connect to almost anything with a serial port"
  homepage "https://www.decisivetactics.com/products/serial/"

  livecheck do
    url "https://api.decisivetactics.com/api/v1/public/appcast?app=serial"
    strategy :page_match
    regex(%r{href=.*?/Serial_(\d+(?:\.\d+)*)\.zip}i)
  end

  auto_updates true

  app "Serial.app"
end
