cask :v1 => 'sourcetree' do
  if MacOS.release <= :snow_leopard
    version '1.8.1'
    sha256 '37a42f2d83940cc7e1fbd573a70c3c74a44134c956ac3305f6b153935dc01b80'
  else
    version '2.0.5.6'
    sha256 'd78e501e2eefef2caa58d785a13240cb4ef035e31846df784256fc061bfa4a4c'
  end

  # atlassian.com is the official download host per the vendor homepage
  url "https://downloads.atlassian.com/software/sourcetree/SourceTree_#{version}.dmg"
  appcast 'https://www.sourcetreeapp.com/update/SparkleAppcast.xml',
          :sha256 => '686fe8b0fa8f449fc5913db088a9607560b269cd7cb6ccd5db61fc8305ee4e82'
  name 'SourceTree'
  homepage 'https://www.sourcetreeapp.com/'
  license :gratis
  tags :vendor => 'Atlassian'

  app 'SourceTree.app'
  binary 'SourceTree.app/Contents/Resources/stree'

  uninstall :launchctl => 'com.atlassian.SourceTreePrivilegedHelper2'

  zap :delete => [
                  '~/Library/Application Support/SourceTree',
                  '~/Library/Caches/com.torusknot.SourceTreeNotMAS',
                 ]

  caveats do
    files_in_usr_local
  end
end
