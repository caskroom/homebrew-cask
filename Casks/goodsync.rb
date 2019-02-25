cask 'goodsync' do
  version '10.9.25.3,643'
  sha256 '3e65d45d33f716c9e509bafe261fe42f0ff4ce6f80038bd3ba700220477af9f8'

  # rink.hockeyapp.net/api/2/apps/8b491acdaa8942108b5d8b019be7fcef was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/8b491acdaa8942108b5d8b019be7fcef/app_versions/#{version.after_comma}?format=zip&avtoken=6b1e930b304f74f53ebe6e776a505fa3bfbe6e6d&download_origin=hockeyapp"
  appcast 'https://rink.hockeyapp.net/api/2/apps/8b491acdaa8942108b5d8b019be7fcef'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
