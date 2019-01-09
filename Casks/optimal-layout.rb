cask 'optimal-layout' do
  version '2.3.2'
  sha256 '7e79da53af0b8060f69427f8e79c8e6bdf6933065f3d0b0c93886c5da2adea19'

  # windowflow.com was verified as official when first introduced to the cask
  url "http://files.windowflow.com/OptimalLayout#{version.major}.zip"
  appcast 'http://most-advantageous.com/sparkle/OL-AppCast.cfm'
  name 'Optimal Layout'
  homepage 'http://most-advantageous.com/optimal-layout/'

  app 'Optimal Layout.app'
end
