cask 'youdaonote' do
  version '3.4.1'
  sha256 'bb8dceba9d1be665d473294325434a3308f34768c488494cb9361193976040fb'

  # download.ydstatic.com/notewebsite/downloads was verified as official when first introduced to the cask
  url 'http://download.ydstatic.com/notewebsite/downloads/YoudaoNote_mojave.dmg'
  name 'YoudaoNote'
  name '有道云笔记'
  homepage 'https://note.youdao.com/'

  depends_on macos: '>= :yosemite'

  app 'YoudaoNote.app'

  zap trash: [
               '~/Library/Caches/com.crashlytics.data/com.youdao.YoudaoDict',
               '~/Library/Caches/com.youdao.YoudaoDict',
               '~/Library/Caches/io.fabric.sdk.mac.data/com.youdao.YoudaoDict',
               '~/Library/Containers/com.youdao.note.YoudaoNoteMac',
               '~/Library/Saved Application State/com.youdao.YoudaoDict.savedState',
               '~/Library/com.youdao.YoudaoDict',
             ]
end
