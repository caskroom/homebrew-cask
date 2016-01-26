cask 'panoply' do
  version '4.4.1'
  sha256 'f04976860540d76d45d4fef64ffa7a7c9b80463a38625634438b01de8aede722'

  url "http://www.giss.nasa.gov/tools/panoply/PanoplyOSX-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'http://www.giss.nasa.gov/tools/panoply/'
  license :closed

  app 'Panoply.app'

  caveats do
    depends_on_java('7+')
  end
end
