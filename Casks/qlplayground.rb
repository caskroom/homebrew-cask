cask :v1 => 'qlplayground' do
  version '0.2'
  sha256 '40487c1351b27a939d6383e359eea73c1a0a6b7fee00247f6954dae32540d1db'

  url 'https://github.com/norio-nomura/qlplayground/releases/download/0.2/qlplayground.qlgenerator-0.2.zip'
  name 'qlplayground'
  homepage 'https://github.com/norio-nomura/qlplayground'
  license :mit

  qlplugin 'qlplayground.qlgenerator'
end
