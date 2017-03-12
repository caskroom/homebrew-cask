cask 'transporter-desktop' do
  version '4.2.12_22430'
  sha256 '76f61d2df639b2539d47319d9afa6c80cffe511de520b4e5bcec05173d9f6cb3'

  # Connected Data was bought by Nexsan in 2015. https://secure.connecteddata.com/ provides access
  # only to the client portal, and is protected by user credentials. The Nexsan support pages are
  # the closest thing to a homepage now publicly available
  url "https://secure.connecteddata.com/mac/2.5/software/Transporter_Desktop_#{version}.dmg"
  name 'Transporter Desktop'
  homepage 'https://helper.nexsansupport.com/tfc_support'

  app 'Transporter Desktop.app'
end
