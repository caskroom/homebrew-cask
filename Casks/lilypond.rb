cask :v1 => 'lilypond' do
  version '2.18.2-1'
  sha256 '0009bf234db6a598e30940ae9a5cef50ffe939992c9bf0c7959ecd9c0d179c80'

  # linuxaudio.org is the official download host per the vendor homepage
  url "http://download.linuxaudio.org/lilypond/binaries/darwin-x86/lilypond-#{version}.darwin-x86.tar.bz2"
  name 'LilyPond'
  homepage 'http://lilypond.org'
  license :gpl

  app 'LilyPond.app'
end
