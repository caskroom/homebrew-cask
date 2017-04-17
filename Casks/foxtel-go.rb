cask :v1 => 'foxtel-go' do
  version '1.5'
  sha256 '51d5dfe4701cd0bdbc6024182df18660e1cabf22277a8f659ec3b22675498d48'

  url 'http://download.foxtel.com.au/go/1.5/Foxtel-Go.pkg'
  name 'Foxtel Go'
  homepage 'https://www.foxtel.com.au/got/whats-on/foxtel-go.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Foxtel Go.app'
end
