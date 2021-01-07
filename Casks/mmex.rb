cask "mmex" do
  version "1.3.5"
  sha256 "ed27e39373c0e74ea856e2cb91b3b6f99fb745b8ec8b83424f7e406e8428fa7d"

  url "https://downloads.sourceforge.net/moneymanagerex/v#{version}/mmex-#{version}-macos10.9-wx3.1.3.dmg",
      verified: "downloads.sourceforge.net/moneymanagerex/"
  name "Money Manager Ex"
  desc "Money management application"
  homepage "https://www.moneymanagerex.org/"

  livecheck do
    url "https://github.com/moneymanagerex/moneymanagerex/releases"
    strategy :github_latest
  end

  app "MMEX.app"

  zap trash: [
    "~/Library/Application Support/MoneyManagerEx",
    "~/Library/Caches/com.yourcompany.MMEX",
    "~/Library/Preferences/com.yourcompany.MMEX.plist",
  ]
end
