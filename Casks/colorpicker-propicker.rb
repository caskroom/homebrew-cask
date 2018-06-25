cask 'colorpicker-propicker' do
  version '1.0'
  sha256 'd1c07c116fee22dbbaea86c285327b5468b82863ba575e8fe462a2dcec023891'

  url "http://www.irradiated.net/appcasts/pro-picker/releases/#{version}/ProPicker.zip"
  appcast 'http://www.irradiated.net/pages/blank/release-notes.php?app=pro-picker'
  name 'Pro Picker'
  homepage 'http://www.irradiated.net/?page=pro-picker'

  colorpicker 'ProPicker.colorPicker'
end
