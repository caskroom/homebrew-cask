cask 'platelet' do
  version '0.0.13'
  sha256 'aba7f4239ba3f34cf7bf13926c85c7b41afb192dc6647594cdf55e1fd989e7f6'

  url "https://github.com/amorist/platelet/releases/download/v0.0.13/platelet-0.0.13.dmg"
  name 'platelet'
  appcast 'https://github.com/amorist/platelet/releases.atom'
  homepage 'https://github.com/amorist/platelet'

  app 'platelet.app'
end
