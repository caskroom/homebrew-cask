cask :v1 => 'sookasa' do
  version '3.11.5'
  sha256 'd9c122f10e939e557b7ea81737efd946c7424f5eabd4c15c51e047ab92493ff7'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d2rs8uj3cnos4.cloudfront.net/mac-apps/releases/Sookasa_#{version}.pkg"
  name 'Sookasa'
  homepage 'https://www.sookasa.com'
  license :commercial

  pkg "Sookasa_#{version}.pkg"

  uninstall :quit => 'com.sookasa.Sookasa',
            :pkgutil => 'com.sookasa.Sookasa'
end
