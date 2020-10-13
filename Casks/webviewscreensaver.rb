cask "webviewscreensaver" do
  version "2.1"
  sha256 "6bedaad77dce40ffe58b14d8dc40d04d1259d92ee59fbbeee68d4b1170a07c1e"

  url "https://github.com/liquidx/webviewscreensaver/releases/download/v#{version}/WebViewScreenSaver-#{version}.zip"
  appcast "https://github.com/liquidx/webviewscreensaver/releases.atom"
  name "WebViewScreenSaver"
  homepage "https://github.com/liquidx/webviewscreensaver"

  depends_on macos: ">= :yosemite"

  screen_saver "WebViewScreenSaver.saver"
end
