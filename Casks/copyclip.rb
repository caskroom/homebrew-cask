cask 'copyclip' do
  version '2.9.97'
  sha256 'ef40942a284f8af9484682b28ae9aa922f4b54ebf2b1c1c5d1b0bf3aa95b60fc'

  # rink.hockeyapp.net/api/2/apps/ffb436060eb379c0cb23097402e92379 was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/ffb436060eb379c0cb23097402e92379?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/ffb436060eb379c0cb23097402e92379'
  name 'CopyClip'
  homepage 'https://fiplab.com/apps/copyclip-for-mac'

  app "CopyClip #{version.major}.app"

  uninstall quit: "com.fiplab.copyclip#{version.major}"

  zap delete: [
                '~/Library/Application Scripts/com.fiplab.copyclip*helper',
                '~/Library/Application Scripts/com.fiplab.copyclip*',
                '~/Library/Containers/com.fiplab.copyclip*helper',
                '~/Library/Containers/com.fiplab.copyclip*',
              ]
end
