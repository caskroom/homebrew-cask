cask 'adobe-reader' do
  version '15.023.20053'
  sha256 '5dd1cffa2bd23be9708b0690ca1ce5bdf0ab708da129ca11c843b6670a73390d'

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
