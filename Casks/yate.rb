cask 'yate' do
  version '3.12'
  sha256 '3967fe2e9d5a6abaf974ff0f325e03f519841f329206d477b230eb75938a87e2'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '50770d2e20a73b0d2cdbd4ad663650e3ee1d963431dfb23b803912df950573b8'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'
  license :commercial

  app 'Yate.app'
end
