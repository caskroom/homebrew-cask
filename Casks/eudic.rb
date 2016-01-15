cask 'eudic' do
  version :latest
  sha256 :no_check

  # frdic.com is the official download host per the vendor homepage
  url 'http://static.frdic.com/pkg/eudicmac.dmg'
  name 'EuDic'
  name '欧路词典'
  homepage 'http://www.eudic.net/eudic/mac_dictionary.aspx'
  license :closed

  app 'EuDic.app'
end
