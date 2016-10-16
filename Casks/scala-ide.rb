cask 'scala-ide' do
  version '4.4.1'
  sha256 'b3bd0907aec82e943de80df428839f08fca6823e99484bf28b50f878d1503d05'

  module Utils
    def self.build
      '20160504'
    end
  end

  # downloads.typesafe.com/scalaide-pack was verified as official when first introduced to the cask
  url "https://downloads.typesafe.com/scalaide-pack/#{version}-vfinal-luna-211-#{Utils.build}/scala-SDK-#{version}-vfinal-2.11-macosx.cocoa.x86_64.zip"
  name 'Scala IDE'
  homepage 'http://scala-ide.org/'

  # Renamed for clarity: app name is inconsistent with its branding.
  # Also renamed to avoid conflict with other eclipse Casks.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/2731
  app 'eclipse', target: 'Scala IDE'
end
