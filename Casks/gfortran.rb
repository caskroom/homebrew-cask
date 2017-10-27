cask 'gfortran' do
  version '6.1'
  sha256 'eb817bce64bf9032595e09166bdaaf740c83bf7258f900b79cd6786437bacbf4'

  # coudert.name/software was verified as official when first introduced to the cask
  url "http://coudert.name/software/gfortran-#{version}-ElCapitan.dmg"
  name 'gfortran'
  homepage 'https://gcc.gnu.org/wiki/GFortranBinaries'

  conflicts_with formula: 'gcc'
  depends_on macos: '>= :el_capitan'

  pkg "gfortran-#{version}-ElCapitan/gfortran.pkg"

  uninstall delete:  [
                       '/usr/local/gfortran',
                       '/usr/local/bin/gfortran',
                     ],
            pkgutil: 'com.gnu.gfortran'

  caveats do
    files_in_usr_local
  end
end
