cask "sublime-text" do
  version "4112"
  sha256 "c23f7959b953ce23d26a8307833afa8dd52662ecc8282b08203c1c5e33069942"

  url "https://download.sublimetext.com/sublime_text_build_#{version.no_dots}_mac.zip"
  name "Sublime Text"
  desc "Text editor for code, markup and prose"
  homepage "https://www.sublimetext.com/"

  livecheck do
    url "https://www.sublimetext.com/download"
    regex(/href=.*?v?(\d+)_mac\.zip/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)[1]
      "#{match[0]}.#{match[1..]}"
    end
  end

  auto_updates true
  conflicts_with cask: "sublime-text-dev"

  app "Sublime Text.app"
  binary "#{appdir}/Sublime Text.app/Contents/SharedSupport/bin/subl"

  uninstall quit: "com.sublimetext.#{version.major}"

  # Sublime Text 4 uses `Sublime Text 3` and `com.sublimetext.3` dirs if they exist
  # Otherwise, it creates `Sublime Text` and `com.sublimetext.4`
  # More info: https://www.sublimetext.com/docs/side_by_side.html
  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sublimetext.#{version.major}.sfl*",
    "~/Library/Application Support/Sublime Text",
    "~/Library/Application Support/Sublime Text (Safe Mode)",
    "~/Library/Application Support/Sublime Text 3",
    "~/Library/Caches/com.sublimetext.#{version.major}",
    "~/Library/Caches/com.sublimetext.3",
    "~/Library/Preferences/com.sublimetext.#{version.major}.plist",
    "~/Library/Preferences/com.sublimetext.3.plist",
    "~/Library/Saved Application State/com.sublimetext.#{version.major}.savedState",
    "~/Library/Saved Application State/com.sublimetext.3.savedState",
  ]
end
