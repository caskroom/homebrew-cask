cask 'jaksta' do
  version '2.2.3'
  sha256 '92cb1eeff5360e0d2ac890556f92c1f0ada74c32209eea5e4eaa27ca3204cc7c'

  url "https://www.jaksta.com/services/download/mac/jaksta-media-recorder/#{version}"
  appcast 'https://www.jaksta.com/Services/VersionDirector/jmr-mac',
          checkpoint: '44dd59d7ec02995687685d56ed99e0607f197b1a3eb03724c61b74daec209c62'
  name 'Jaksta'
  homepage 'https://www.jaksta.com/products'

  pkg "JMR-#{version}.pkg"

  uninstall pkgutil: 'com.shedwork.Jaksta'
end
