cask 'dropzone' do
  version '3.6.7'
  sha256 '7162843b5ba42576abb22f54451b2cd684e3b3a004140c7723fecb313d0c8fea'

  url "https://aptonic.com/dropzone3/sparkle/Dropzone-#{version}.zip"
  appcast 'https://aptonic.com/sparkle/updates.xml'
  name 'Dropzone'
  homepage 'https://aptonic.com/'

  app "Dropzone #{version.major}.app"

  zap trash: [
               "~/Library/Application Scripts/com.aptonic.Dropzone#{version.major}",
               '~/Library/Application Scripts/com.aptonic.LaunchAtLogin',
               "~/Library/Application Support/Dropzone #{version.major}",
               "~/Library/Caches/com.aptonic.Dropzone#{version.major}",
               "~/Library/Containers/com.aptonic.Dropzone#{version.major}",
               '~/Library/Containers/com.aptonic.LaunchAtLogin',
               "~/Library/Preferences/com.aptonic.Dropzone#{version.major}.plist",
               "~/Library/Saved Application State/com.aptonic.Dropzone#{version.major}.savedState",
             ]
end
