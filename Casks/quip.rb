cask 'quip' do
  version '7.6.2'
  sha256 '925a115267c18032a1ec8cffea044c69a2bdc01af185d95ed8e385ba1c1a0d72'

  # quip-clients.com was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
