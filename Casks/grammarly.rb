cask "grammarly" do
  version "1.5.72"
  sha256 :no_check

  url "https://download-editor.grammarly.com/osx/Grammarly.dmg"
  name "Grammarly"
  desc "Utility to fix grammar errors and style issues in text"
  homepage "https://www.grammarly.com/"

  app "Grammarly.app"

  livecheck do
    url :url
    strategy :extract_plist do |versions|
      versions.values.map(&:short_version).compact.first
    end 
  end

  zap trash: [
    "~/Library/Application Support/Grammarly",
    "~/Library/Caches/com.grammarly.DesktopEditor",
    "~/Library/Caches/com.grammarly.DesktopEditor.ShipIt",
    "~/Library/Logs/Grammarly",
    "~/Library/Preferences/com.grammarly.DesktopEditor.helper.plist",
    "~/Library/Preferences/com.grammarly.DesktopEditor.plist",
    "~/Library/Saved Application State/com.grammarly.DesktopEditor.savedState",
  ]
end
