cask 'rider' do
  # Rider is EAP only for now
  version '1.0,171.4456.1432'
  sha256 'f4bd0df5e45c2c4f356f0716bd2c8e9ec21b81a9161abcf5283234e099f7989e'

  url "https://download.jetbrains.com/resharper/Rider-RC-#{version.after_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=RD&latest=true&type=eap',
          checkpoint: '6391fe0c6b7d03925ad568e1d9ac88c11b5ff7d0120a85b967c1fd9e9c010471'
  name 'Jetbrains Rider'
  homepage 'https://www.jetbrains.com/rider/'

  auto_updates true

  app 'Rider EAP.app'

  uninstall delete: ENV['PATH'].split(File::PATH_SEPARATOR).map { |p| "#{p}/rider" }.select { |f| File.exist?(f) }

  zap delete: [
                "~/Library/Caches/Rider#{version.major_minor.no_dots}",
                "~/Library/Logs/Rider#{version.major_minor.no_dots}",
                "~/Library/Application Support/Rider#{version.major_minor.no_dots}",
                "~/Library/Preferences/Rider#{version.major_minor.no_dots}",
                '~/Library/Preferences/com.jetbrains.rider-EAP.plist',
                '~/Library/Saved Application State/com.jetbrains.rider-EAP.savedState',
              ]
end
