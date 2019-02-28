cask 'reveal' do
  version '21'
  sha256 'e1a7b7d237655c97f91c1f7e8fa43bc79d46743ddd9ab287b977a8d6a458b129'

  url "https://download.revealapp.com/Reveal.app-#{version}.zip"
  appcast 'https://updates.devmate.com/com.ittybittyapps.Reveal2.xml'
  name 'Reveal'
  homepage 'https://revealapp.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Reveal.app'

  zap trash: [
                '~/Library/Application Support/Reveal',
                '~/Library/Caches/com.ittybittyapps.Reveal2',
                '~/Library/Logs/com.ittybittyapps.Reveal2',
                '~/Library/Preferences/com.ittybittyapps.Reveal2.plist',
                '~/Library/Saved Application State/com.ittybittyapps.Reveal2.savedState',
                '/Users/Shared/Reveal',
             ]
end
