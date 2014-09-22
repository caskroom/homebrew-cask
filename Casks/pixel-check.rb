class PixelCheck < Cask
  version '1.3'
  sha256 '99da44c4538463c6476be2f7d6584a4e5a9bfa175895d72e5baf1f3271316b02'

  url "http://macguitar.me/apps/pixelcheck/PXC#{version}.zip"
  homepage 'http://macguitar.me/apps/pixelcheck/'

  app "PiXel Check #{version}/PiXel Check.app"
end
