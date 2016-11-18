cask 'liteswitch-x' do
  version '2.8.3'
  sha256 'c4fa6ab80296585cbf4cdfce2b2635f11c21a2f680d029d0a4645a26854d6671'

  url "http://sysbeep.com/legacy/LiteSwitch%20X%20#{version}.zip"
  name 'LiteSwitch X'
  homepage 'http://sysbeep.com/'

  prefpane "LiteSwitch X #{version}/LiteSwitch X.prefPane"

  zap delete: '~/Library/Preferences/com.proteron.liteswitch.plist',
end
