cask :v1 => "ip-inside-agent-for-hana-bank" do
  version :latest
  sha256 :no_check

  url "https://open.hanabank.com/interezen/agent/IPinsideAgent.dmg"
  name 'IP inside Agent for Hana Bank'
  homepage "https://open.hanabank.com"
  license :gratis

  pkg "IPinsideAgent.pkg"
  uninstall :script => "/opt/homebrew-cask/Caskroom/ip-inside-agent-for-hana-bank/latest/IPinside Uninstaller.app/Contents/MacOS/IPinside Uninstaller"
end
