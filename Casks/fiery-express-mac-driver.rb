cask :v1 => 'fiery-express-mac-driver' do
  version '1.0.0.3'
  sha256 '1585b1852d12246ef47b8bf0762c25fa16ffd435f21a5fbf1385f202a863a8da'

  url 'https://d1m2uyedaojrqy.cloudfront.net/FSO/efi/MACOSX107/osx/all_lang/NA/Fiery%20Express%20Mac%20Driver.dmg.zip'
  homepage 'http://w3.efi.com/fiery/fiery-support/download/download-drivers'
  license :unknown
 
  installer :manual => 'Fiery Express Mac Driver.dmg'
  
  # Currently not working becasue of issue with nested container
  # container :nested => 'Fiery Express Mac Driver.dmg'
  # pkg 'Fiery Express Mac Driver.pkg'

  # ==> Extracting nested container Fiery Express Mac Driver.dmg
  # ==> hdiutil: mount failed - no mountable file systems
  # Error: Empty plist input
 
  uninstall :pkgutil => 'EFI.COM.fieryExpressMacDriver.FieryExpressDrvFilesversion1.pkg'
end
