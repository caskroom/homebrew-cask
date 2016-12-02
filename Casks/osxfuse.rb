cask 'osxfuse' do
  version '3.5.4'
  sha256 '6c8f48ff1f67db41ece2a042a2649b875d12f7ed6ee0b50d08eebae26c46c5ca'

  # github.com/osxfuse was verified as official when first introduced to the cask
  url "https://github.com/osxfuse/osxfuse/releases/download/osxfuse-#{version}/osxfuse-#{version}.dmg"
  appcast 'https://github.com/osxfuse/osxfuse/releases.atom',
          checkpoint: '7466325f124e35a89afcf9d84f706df8b7437e17092b75a0a133c2a3fd475207'
  name 'OSXFUSE'
  homepage 'https://osxfuse.github.io/'

  installer script: '/usr/sbin/installer',
            args:   [
                      '-pkg', "#{staged_path}/Extras/FUSE for macOS #{version}.pkg",
                      '-target', '/',
                      '-applyChoiceChangesXML', "#{staged_path}/Extras/Choices.xml"
                    ]

  preflight do
    IO.write "#{staged_path}/Extras/Choices.xml", <<-EOS.undent
      <plist>
        <array>
        	<dict>
        		<key>attributeSetting</key>
        		<integer>1</integer>
        		<key>choiceAttribute</key>
        		<string>selected</string>
        		<key>choiceIdentifier</key>
        		<string>com.github.osxfuse.pkg.MacFUSE</string>
        	</dict>
        </array>
      </plist>
    EOS
  end

  postflight do
    set_ownership ['/usr/local/include', '/usr/local/lib']
  end

  uninstall pkgutil: [
                       'com.github.osxfuse.pkg.Core',
                       'com.github.osxfuse.pkg.MacFUSE',
                       'com.github.osxfuse.pkg.PrefPane',
                     ],
            kext:    'com.github.osxfuse.filesystems.osxfusefs'

  caveats do
    reboot
  end
end
