cask 'horndis' do
  version '9.2'
  sha256 '15f5c6cbe14e5c0f11bf27172dfbcdf3b753122d128807d6bad94c8f4c2b71e1'

  url "https://github.com/jwise/HoRNDIS/releases/download/rel#{version}/HoRNDIS-#{version}.pkg"
  appcast 'https://github.com/jwise/HoRNDIS/releases.atom'
  name 'HoRNDIS'
  homepage 'https://github.com/jwise/HoRNDIS'

  pkg "HoRNDIS-#{version}.pkg"

  uninstall kext:    'com.joshuawise.kexts.HoRNDIS',
            pkgutil: 'com.joshuawise.*'
end
