cask 'adobe-reader' do
  version '17.009.20044'
  sha256 'cc1f94c913194963cf83edbb104b616d5411ee644ada7405390f7daebaed1efc'

  url "http://ardownload.adobe.com/pub/adobe/reader/mac/AcrobatDC/#{version.no_dots}/AcroRdrDC_#{version.no_dots}_MUI.dmg"
  name 'Adobe Acrobat Reader DC'
  homepage 'https://acrobat.adobe.com/us/en/acrobat/pdf-reader.html'

  depends_on macos: '>= :mavericks'

  pkg "AcroRdrDC_#{version.no_dots}_MUI.pkg"

  uninstall pkgutil: 'com.adobe.acrobat.DC.reader.*',
            delete:  '/Applications/Adobe Acrobat Reader DC.app',
            quit:    [
                       'com.adobe.Reader',
                       'com.adobe.AdobeRdrCEFHelper',
                       'com.adobe.AdobeRdrCEF',
                     ]

  zap delete: [
                '~/Library/Preferences/com.adobe.Reader.plist',
                '~/Library/Preferences/com.adobe.AdobeRdrCEFHelper.plist',
                '~/Library/Preferences/com.adobe.crashreporter.plist',
                '~/Library/Caches/com.adobe.Reader',
                '/Library/Preferences/com.adobe.reader.DC.WebResource.plist',
              ]
end
