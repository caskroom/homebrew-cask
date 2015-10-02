cask :v1 => 'blockblock' do
  version '0.9.3'
  sha256 '719761707b8fca83014bfdd58d01d37ad0c32142d57913f8ed46c56a3011ad0c'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/objective-see/deploy/downloads/BlockBlock_#{version}.zip"
  name 'BlockBlock'
  homepage 'https://objective-see.com/products/blockblock.html'
  license :unknown

  installer :manual => 'BlockBlock.app'

  uninstall_preflight do
    set_ownership "/Library/LaunchDaemons/com.objectiveSee.blockblock.plist"
  end

  uninstall :launchctl => ['/Library/LaunchDaemons/com.objectiveSee.blockblock.plist', '~/Library/LaunchAgents/com.objectiveSee.blockblock.plist'],
            :delete => ['/Library/LaunchDaemons/com.objectiveSee.blockblock.plist', '~/Library/LaunchAgents/com.objectiveSee.blockblock.plist']
end
