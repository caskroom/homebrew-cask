cask "xamarin-profiler" do
  version "1.6.13,11"
  sha256 "d190fb22d921945a613b2b8b013cfe4cd775401e98d3350373852f3702e28ce2"

  url "https://dl.xamarin.com/profiler/profiler-mac-#{version.before_comma}-#{version.after_comma}.pkg"
  name "Xamarin Profiler"
  homepage "https://developer.xamarin.com/releases/profiler/"

  livecheck do
    url "https://docs.microsoft.com/en-gb/xamarin/tools/profiler/release-notes/#{version.major_minor}/#{version.before_comma}"
    strategy :page_match
    regex(%r{href=.*?/profiler-mac-#{version.before_comma}-(\d+(?:\.\d+)*)\.pkg}i)
  end

  pkg "profiler-mac-#{version.before_comma}-#{version.after_comma}.pkg"

  uninstall pkgutil: "com.xamarin.profiler"
end
