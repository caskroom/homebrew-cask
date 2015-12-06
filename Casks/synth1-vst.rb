cask :v1 => 'synth1-vst' do
  version '1.13beta8'
  sha256 '6b172b9433358bce21f0af75a28505c3365d934fadee04a738336e7f5f601675'

  url 'http://www.geocities.jp/daichi1969/softsynth/Synth1macvst113beta8.zip'
  name 'Synth1 (VST)'
  name 'Synth 1 (VST)'
  homepage 'http://www.geocities.jp/daichi1969/softsynth/'
  license :gratis

  artifact 'Synth1.vst', :target => '../Library/Audio/Plug-Ins/VST/Synth1.vst'
end
