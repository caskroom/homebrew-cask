cask "sublime-text" do
  version "4.107"
  sha256 "5da344779f92c7eb3ac279a6b3cc8810e86480b3e71fba79d8e09e94a3631602"

  url "https://download.sublimetext.com/sublime_text_build_#{version.no_dots}_mac.zip"
  name "Sublime Text"
  desc "Text editor for code, markup and prose"
  homepage "https://www.sublimetext.com"

  livecheck do
    url "https://www.sublimetext.com/updates/#{version.major}/stable/appcast_osx.xml"
    strategy :sparkle do |item|
      match = item.version.match(/(\d)(\d+)/)
      "#{match[1]}.#{match[2]}"
    end
  end

  auto_updates true
  conflicts_with cask: "sublime-text-dev"

  app "Sublime Text.app"
  binary "#{appdir}/Sublime Text.app/Contents/SharedSupport/bin/subl"

  uninstall quit: "com.sublimetext.#{version.major}"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sublimetext.#{version.major}.sfl*",
    "~/Library/Application Support/Sublime Text #{version.major}",
    "~/Library/Caches/com.sublimetext.#{version.major}",
    "~/Library/Preferences/com.sublimetext.#{version.major}.plist",
    "~/Library/Saved Application State/com.sublimetext.#{version.major}.savedState",
  ]
end
