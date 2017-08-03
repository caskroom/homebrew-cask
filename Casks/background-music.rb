cask 'background-music' do
  version '0.1.1'
  sha256 '7ce875bb00fdeb2b5b363aa92367b3fa096d18cb02a02c461d5df66307ab1088'

  url "https://github.com/kyleneideck/BackgroundMusic/releases/download/v0.1.1/BackgroundMusic-#{version}.pkg"
  appcast 'https://github.com/kyleneideck/BackgroundMusic/releases.atom',
          checkpoint: 'ba1cfbe4e14dfa185f3de08e2bf4bab608ca015fb96f6369c4d556567a5b9b39'
  name 'Background Music'
  homepage 'https://github.com/kyleneideck/BackgroundMusic'

  pkg "BackgroundMusic-#{version}.pkg"

  uninstall quit:    'com.bearisdriving.BGM.App',

            pkgutil: [
                       'com.bearisdriving.BGM',
                       'com.bearisdriving.BGM.XPCHelper',
                     ]
end
