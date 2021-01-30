cask "brewtarget" do
  version "2.3.0"
  sha256 "f1b3b33029f7d7cd873a1cdbf0741da22085f53dcefa2943dcfa8d35eda89fdd"

  url "https://launchpad.net/brewtarget/trunk/#{version}/+download/Brewtarget-#{version}.dmg",
      verified: "launchpad.net/brewtarget/"
  name "brewtarget"
  homepage "http://www.brewtarget.org/"

  livecheck do
    url "https://launchpad.net/brewtarget/trunk/"
    strategy :page_match
    regex(%r{href=.*?/Brewtarget[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "brewtarget.app"
end
