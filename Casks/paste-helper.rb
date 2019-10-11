cask 'paste-helper' do
  version :latest
  sha256 :no_check

  url 'https://pasteapp.me/helper/download'
  name 'Paste Helper'
  homepage 'https://pasteapp.me/helper/'

  conflicts_with cask: 'paste'
  depends_on macos: '>= :yosemite'

  installer script: "#{staged_path}/Paste Helper.app/Contents/MacOS/Paste Helper"

  uninstall quit:       'com.wiheads.paste-helper',
            delete:     '~/Library/Application Support/Paste Helper/Paste Helper.app',
            login_item: 'Paste Helper'

  zap trash: [
               '~/Library/Application Support/Paste Helper/',
               '~/Library/Application Support/com.wiheads.paste-helper/',
               '~/Library/Preferences/com.wiheads.paste-helper.plist',
             ]
end
