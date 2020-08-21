cask "flash-npapi" do
  version "32.0.0.414"
  sha256 "76f760cc1e84625445e6b88a80d30323d89457b97b80d4a6f4c75fe40d0c5e77"

  url "https://fpdownload.adobe.com/pub/flashplayer/pdc/#{version}/install_flash_player_osx.dmg"
  appcast "https://fpdownload.adobe.com/pub/flashplayer/update/current/xml/version_en_mac_pl.xml",
          must_contain: version.tr(".", ",")
  name "Adobe Flash Player NPAPI (plugin for Safari and Firefox)"
  homepage "https://get.adobe.com/flashplayer/"

  auto_updates true

  pkg "Install Adobe Flash Player.app/Contents/Resources/Adobe Flash Player.pkg"

  uninstall pkgutil:   "com.adobe.pkg.FlashPlayer",
            launchctl: "com.adobe.fpsaud",
            delete:    [
              "/Library/Application Support/Adobe/Flash Player Install Manager",
              "/Library/Internet Plug-Ins/Flash Player.plugin",
            ]

  zap trash: [
    "/Library/Internet Plug-Ins/flashplayer.xpt",
    "~/Library/Caches/Adobe/Flash Player",
    "~/Library/Logs/FlashPlayerInstallManager.log",
    "~/Library/Preferences/Macromedia/Flash Player",
    "~/Library/Saved Application State/com.adobe.flashplayer.installmanager.savedState",
  ]
end
