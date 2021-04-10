cask "battery-report" do
  version "1.2.0"
  sha256 "1ad72dc7c73c2a9e0d85b7ee6836348714fe00b51bd6c49352b0c01e40425015"

  url "https://www.dssw.co.uk/batteryreport/dsswbatteryreport-#{version.no_dots}.dmg"
  name "Battery Report"
  homepage "https://www.dssw.co.uk/batteryreport/"

  livecheck do
    url "https://version.dssw.co.uk/batteryreport/standard"
    strategy :page_match
    regex(%r{href=.*?/dsswbatteryreport-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Battery Report.app"
end
