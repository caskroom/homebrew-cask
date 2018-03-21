cask 'bearychat' do
  version :latest
  sha256 :no_check

  url 'https://static.bearychat.com/v2/BearyChat.dmg'
  name 'BearyChat'
  homepage 'https://bearychat.com/'

  app 'BearyChat.app'

  zap trash: [
               '~/Preferences/com.node-webkit-builder.bearychat.plist',
               '~/Library/Application Support/BearyChat',
               '~/Library/Application Support/BearyChat_V2',
             ]
end
