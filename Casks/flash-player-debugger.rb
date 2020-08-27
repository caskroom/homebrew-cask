cask "flash-player-debugger" do
  version "32.0.0.414"
  sha256 "7d66c08635bebdb0b1884e7a0166678055aba839c626348401451b924deb7657"

  url "https://fpdownload.adobe.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_sa_debug.dmg"
  appcast "https://fpdownload.adobe.com/pub/flashplayer/update/current/xml/version_en_mac_pep.xml",
          must_contain: version.tr(".", ",")
  name "Adobe Flash Player projector content debugger"
  homepage "https://www.adobe.com/support/flashplayer/debug_downloads.html"

  # Renamed to avoid conflict with flash-player.
  app "Flash Player.app", target: "Flash Player Debugger.app"

  uninstall pkgutil:   "com.adobe.pkg.PepperFlashPlayer",
            launchctl: "com.adobe.fpsaud",
            delete:    [
              "/Library/Application Support/Adobe/Flash Player Install Manager",
              "/Library/Internet Plug-Ins/PepperFlashPlayer",
            ]

  zap trash: [
    "/Library/Internet Plug-Ins/flashplayer.xpt",
    "~/Library/Caches/Adobe/Flash Player",
    "~/Library/Logs/FlashPlayerInstallManager.log",
    "~/Library/Preferences/Macromedia/Flash Player",
    "~/Library/Saved Application State/com.adobe.flashplayer.installmanager.savedState",
  ]
end
