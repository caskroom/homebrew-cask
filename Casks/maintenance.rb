cask 'maintenance' do
  if MacOS.version == :yosemite
    version '2.0.7'
    sha256 '5c926159c0610fe705b0f23b56672f1c5e46c970f92013839c772147379520f9'
  elsif MacOS.version == :el_capitan
    version '2.1.8'
    sha256 'f27f5d0736e80cd80c85dcc5390dfeb893183424fe65b32b08e280c90b22b24c'
  elsif MacOS.version == :sierra
    version '2.3.0'
    sha256 '8fde91742126d10234451a3c973461f5d84c771e52c6ee14aff93f1d66a0dbca'
  elsif MacOS.version == :high_sierra
    version '2.4.2'
    sha256 '94c7a322d4d796afc5e52534f3564a562240d9c0ec0a60de210e68372fef2137'
  else
    version '2.4.9'
    sha256 '1e81ed81379aea46a9530ede078009a56ac65db33deeeb808550bff14556f366'
  end

  url "https://www.titanium-software.fr/download/#{MacOS.version.to_s.delete('.')}/Maintenance.dmg"
  appcast 'https://www.titanium-software.fr/en/release_maintenance.html'
  name 'Maintenance'
  homepage 'https://www.titanium-software.fr/en/maintenance.html'

  # Unusual case: The software will stop working, or is dangerous to run, on the next macOS release.
  depends_on macos: [
                      :yosemite,
                      :el_capitan,
                      :sierra,
                      :high_sierra,
                      :mojave,
                    ]

  app 'Maintenance.app'
end
