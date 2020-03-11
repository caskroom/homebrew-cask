cask 'anki' do
  version '2.1.21'
  sha256 '1fe04dd0e7f34611a20b2602a63407f64131348950b95e43bbe07302c25aa932'

  url "https://apps.ankiweb.net/downloads/current/anki-#{version}-mac.dmg"
  appcast 'https://changes.ankiweb.net/README.md'
  name 'Anki'
  homepage 'https://apps.ankiweb.net/'

  depends_on macos: '>= :sierra'

  app 'Anki.app'

  zap trash: [
               '~/Library/Application Support/Anki',
               '~/Library/Application Support/Anki2',
             ]
end
