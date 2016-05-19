cask 'dwarf-fortress' do
  module Utils
    def self.update_sdl(name, url, path)
      File.open("#{path}/update_sdl", 'a') do |f|
        f.puts(<<-EOF)
#!/bin/sh
curl -ksL 'https://www.libsdl.org/#{url}' -o /tmp/#{name}.dmg
hdiutil attach /tmp/#{name}.dmg
rm -rf '#{path}/df_osx/libs/#{name}.framework'
cp -r '/Volumes/#{name}/#{name}.framework' '#{path}/df_osx/libs'
hdiutil detach /Volumes/#{name}
        EOF
        FileUtils.chmod '+x', f
      end
    end
  end

  version '0.43.01'
  sha256 '7fe378b7aeee67f10a1f88a2341b8724edbf91795fd928506f01dfb403304d43'

  url "http://www.bay12games.com/dwarves/df_#{version.minor}_#{version.patch}_osx.tar.bz2"
  name 'Dwarf Fortress'
  homepage 'http://www.bay12games.com/dwarves/'
  license :gratis

  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/df_wrapper"
  binary shimscript, target: Hbc.homebrew_prefix.join('bin/df_osx')

  preflight do
    File.open(shimscript, 'w') do |f|
      f.puts '#!/bin/sh'
      f.puts "cd '#{staged_path}/df_osx' && ./df \"$@\""
      FileUtils.chmod '+x', f
    end
  end

  postflight do
    # http://dwarffortresswiki.org/index.php/DF2014:Installation#Mac
    Utils.update_sdl 'SDL_ttf', 'projects/SDL_ttf/release/SDL_ttf-2.0.11.dmg', staged_path
    Utils.update_sdl 'SDL', 'release/SDL-1.2.15.dmg', staged_path
    ohai "Run #{staged_path}/update_sdl to fetch and replace DF's SDL libraries"
  end
end
