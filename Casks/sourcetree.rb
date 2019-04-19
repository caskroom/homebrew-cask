cask 'sourcetree' do
  if MacOS.version <= :sierra
    version '2.7.6a'
    sha256 'd60614e9ab603e0ed158b6473c36e7944b2908d9943e332c505eba03dc1d829e'

    # atlassian.com/software/sourcetree was verified as official when first introduced to the cask
    url "https://downloads.atlassian.com/software/sourcetree/Sourcetree_#{version}.zip"
  else
    version '3.1.2_216'
    sha256 '4c5fb503f2cb486d2cc6aaf4192749ee2679ccfbbf1eaa981b2b3ed13a643e27'

    # atlassian.com/software/sourcetree was verified as official when first introduced to the cask
    url "https://product-downloads.atlassian.com/software/sourcetree/ga/Sourcetree_#{version}.zip"
  end

  appcast 'https://product-downloads.atlassian.com/software/sourcetree/Appcast/SparkleAppcastGroup1.xml'
  name 'Atlassian SourceTree'
  homepage 'https://www.sourcetreeapp.com/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app 'Sourcetree.app'
  binary "#{appdir}/Sourcetree.app/Contents/Resources/stree"

  uninstall launchctl: 'com.atlassian.SourceTreePrivilegedHelper2',
            quit:      'com.torusknot.SourceTreeNotMAS'

  zap trash: [
               '~/Library/Application Support/SourceTree',
               '~/Library/Caches/com.torusknot.SourceTreeNotMAS',
               '~/Library/Preferences/com.torusknot.SourceTreeNotMAS.plist',
               '~/Library/Preferences/com.torusknot.SourceTreeNotMAS.LSSharedFileList.plist',
               '~/Library/Saved Application State/com.torusknot.SourceTreeNotMAS.savedState',
             ]
end
