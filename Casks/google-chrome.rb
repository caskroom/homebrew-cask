cask "google-chrome" do
  version "86.0.4240.75"
  sha256 "3ab76266189a7b2c5b9f789fbae7f7d25404e7158ee3e841dc0692eae2718182"

  url "https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg"
  appcast "https://omahaproxy.appspot.com/history?os=mac;channel=stable"
  name "Google Chrome"
  desc "Cross-platform web browser"
  homepage "https://www.google.com/chrome/"

  auto_updates true
  conflicts_with cask: [
    "homebrew/cask-versions/google-chrome-beta",
    "homebrew/cask-versions/google-chrome-dev",
  ]
  depends_on macos: ">= :yosemite"

  app "Google Chrome.app"

  uninstall launchctl: [
    "com.google.keystone.agent",
    "com.google.keystone.daemon",
  ]

  zap trash: [
    "/Library/Caches/com.google.SoftwareUpdate.*",
    "/Library/Google/Google Chrome Brand.plist",
    "/Library/Google/GoogleSoftwareUpdate",
    "~/Library/Application Support/Google/Chrome",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.chrome.app.*.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.chrome.sfl*",
    "~/Library/Caches/Google/Chrome",
    "~/Library/Caches/com.google.Chrome",
    "~/Library/Caches/com.google.Chrome.helper.*",
    "~/Library/Caches/com.google.Keystone",
    "~/Library/Caches/com.google.Keystone.Agent",
    "~/Library/Caches/com.google.SoftwareUpdate",
    "~/Library/Google/Google Chrome Brand.plist",
    "~/Library/Google/GoogleSoftwareUpdate",
    "~/Library/LaunchAgents/com.google.keystone.agent.plist",
    "~/Library/Logs/GoogleSoftwareUpdateAgent.log",
    "~/Library/Preferences/com.google.Chrome.plist",
    "~/Library/Preferences/com.google.Keystone.Agent.plist",
    "~/Library/Saved Application State/com.google.Chrome.app.*.savedState",
    "~/Library/Saved Application State/com.google.Chrome.savedState",
    "~/Library/WebKit/com.google.Chrome",
  ],
      rmdir: [
        "/Library/Google",
        "~/Library/Application Support/Google",
        "~/Library/Caches/Google",
        "~/Library/Google",
      ]
end
