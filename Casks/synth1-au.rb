cask :v1 => 'synth1-au' do
  version '1.13beta8'
  sha256 '78660848d78c19cdda2597bd050a2ec95fa915cc1a1ab598bde0192a1cbc9a6f'

  url 'http://www.geocities.jp/daichi1969/softsynth/Synth1macau113beta8.zip'
  name 'Synth1 (AU)'
  name 'Synth 1 (AU)'
  homepage 'http://www.geocities.jp/daichi1969/softsynth/'
  license :gratis

  artifact 'Synth1.component', :target => '../Library/Audio/Plug-Ins/Components/Synth1.component'
end
