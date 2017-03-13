cask 'switchhosts' do
  version '3.2.3.4264'
  sha256 'bd54356ffa87273f1a76240968931c89c03cba69c22ed4c6a4970551631ffe36'

  # github.com/oldj/SwitchHosts was verified as official when first introduced to the cask
  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts-macOS-x64_v#{version}.zip"
  name 'SwitchHosts!'
  homepage 'https://oldj.github.io/SwitchHosts/'

  app 'SwitchHosts!.app'
end
