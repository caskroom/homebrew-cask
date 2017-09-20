cask 'colorpicker-materialdesign' do
  version '1.0.0'
  sha256 'e00b2ba5cc4c011b5f32bbb40dd9c997b7777923e6f5c4ce158cb746dafccf72'

  url "https://github.com/CodeCatalyst/MaterialDesignColorPicker/releases/download/v#{version}/MaterialDesignColorPicker.colorPicker.zip"
  name 'Material Design'
  homepage 'https://github.com/CodeCatalyst/MaterialDesignColorPicker'

  colorpicker 'MaterialDesignColorPicker.colorPicker'
end
