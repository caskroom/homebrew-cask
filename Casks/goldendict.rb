cask 'goldendict' do
  version '1.5.0-RC2'
  sha256 'bc04acbd5db51d50b8b6262d69117304df96776472b7a1df7ad42dafafe573ff'

  # sourceforge.net/project/goldendict was verified as official when first introduced to the cask
  url 'https://jaist.dl.sourceforge.net/project/goldendict/early%20access%20builds/MacOS/GoldenDict-1.5.0-RC2-372-gc3ff15f%28Qt_5121%29.dmg'
  appcast 'https://github.com/goldendict/goldendict/releases.atom'
  name 'GoldenDict'
  homepage 'https://github.com/goldendict/goldendict'

  depends_on macos: '>= :sierra'

  app 'GoldenDict.app'
  binary "#{appdir}/GoldenDict.app/Contents/MacOS/GoldenDict"

  zap trash: [
               '~/Library/Preferences/org.goldendict.plist',
               '~/Library/Saved Application State/org.goldendict.savedState',
               '~/.goldendict',
             ]
end
