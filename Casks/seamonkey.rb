cask 'seamonkey' do
  version '2.49.2'

  language 'de' do
    sha256 'da2708b80251636955d802bb32de8a352a46df661337f23801fa3c0f847f40c5'
    'de'
  end

  language 'en-GB' do
    sha256 'f33dc841580063dcb34b06791aeb92d0530d591ff5ff6d284aa17a979a4dba5c'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '2647979382e7f92f32095bdc288d0e8395860b63e3df66c3e600ecb2f4f25d73'
    'en-US'
  end

  language 'fr' do
    sha256 '9e582dd487afa8cc6e625ea8a817086793473a89d0a06a21050eb25576879130'
    'fr'
  end

  language 'it' do
    sha256 '717a3f87c37bb76a712dfa81a6483ae17e179b9e5daf644585838ea03e961ee2'
    'it'
  end

  language 'ru' do
    sha256 '44f30154148f6ae7754ea849e0fd93fe305eb9cf6ffdd9a42b1b57cab4b0048c'
    'ru'
  end

  # mozilla.org/pub/seamonkey/releases was verified as official when first introduced to the cask
  url "https://ftp.mozilla.org/pub/seamonkey/releases/#{version}/mac/#{language}/SeaMonkey%20#{version}.dmg"
  name 'SeaMonkey'
  homepage 'https://www.seamonkey-project.org/'

  auto_updates true

  app 'SeaMonkey.app'
end
