cask 'osbuddy' do
  version :latest
  sha256 :no_check

  url 'http://cdn.rsbuddy.com/OSBuddy.zip'
  name 'OSBuddy'
  homepage 'https://rsbuddy.com/osbuddy'
  license :freemium

  app 'OSBuddy.app'
end
