cask 'copay' do
  version '4.3.6'
  sha256 '19a89eaeef368fb922312991960eba9c43b80ebf7b69210a0fc1559999c69e5d'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/Copay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: 'eeabdc6164f4b5cc934fd0554a911e2104b744d7b339cf46c95ea4d1876ab6dd'
  name 'Copay'
  homepage 'https://copay.io/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'Copay.app'

  zap trash: '~/Library/Application Support/bitpay'
end
