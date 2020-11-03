cask "numi" do
  version "3.29.676"
  sha256 "d95ad5f4b8b15015aea9578d1f09bd371babbfe1a12037a8b5df7cbcf4893c96"

  url "https://s3.numi.app/updates/#{version}/Numi.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://s1.numi.app/download"
  name "Numi"
  desc "Calculator and converter application"
  homepage "https://numi.app/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Numi.app"

  uninstall launchctl: "com.dmitrynikolaev.numi#{version.major}helper",
            quit:      "com.dmitrynikolaev.numi"

  zap trash: [
    "~/Library/Application Support/Numi",
    "~/Library/Application Support/com.dmitrynikolaev.numi",
    "~/Library/Application Support/CrashReporter/Numi_*.plist",
    "~/Library/Caches/com.crashlytics.data/com.dmitrynikolaev.numi",
    "~/Library/Caches/com.dmitrynikolaev.numi",
    "~/Library/Caches/io.fabric.sdk.mac.data/com.dmitrynikolaev.numi",
    "~/Library/Containers/com.dmitrynikolaev.numi.NumiExtension",
    "~/Library/Preferences/com.dmitrynikolaev.numi.plist",
    "/Users/Shared/Numi",
  ]
end
