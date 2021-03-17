cask "webstorm" do
  version "2020.3.3"

  if Hardware::CPU.intel?
    url "https://download.jetbrains.com/webstorm/WebStorm-#{version.before_comma}.dmg"
    sha256 "05997f0f0171ead020202ba7e2c38634164138f1731d76dc3528705141869dc9"
  else
    url "https://download.jetbrains.com/webstorm/WebStorm-#{version.before_comma}-aarch64.dmg"
    sha256 "4aa7a24e4a32c83b3d187c39d4e357ba59194f32baca6c66842c65ff1ce1fd0b"
  end

  appcast "https://data.services.jetbrains.com/products/releases?code=WS&latest=true&type=release"
  name "WebStorm"
  desc "JavaScript IDE"
  homepage "https://www.jetbrains.com/webstorm/"

  auto_updates true

  app "WebStorm.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "wstorm") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/WebStorm#{version.major_minor}",
    "~/Library/Caches/WebStorm#{version.major_minor}",
    "~/Library/Logs/WebStorm#{version.major_minor}",
    "~/Library/Preferences/WebStorm#{version.major_minor}",
    "~/Library/Preferences/jetbrains.webstorm.aaac0500.plist",
    "~/Library/Saved Application State/com.jetbrains.WebStorm.savedState",
  ]
end
