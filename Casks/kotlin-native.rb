cask "kotlin-native" do
  version "1.4.20"
  sha256 "5c4e838211ffe52d542fe559dbc55d2173a289dd91fd91294845fe7555478b9b"

  # github.com/JetBrains/kotlin/ was verified as official when first introduced to the cask
  url "https://github.com/JetBrains/kotlin/releases/download/v#{version}/kotlin-native-macos-#{version}.tar.gz"
  appcast "https://github.com/JetBrains/kotlin-native/releases.atom"
  name "Kotlin Native"
  homepage "https://kotlinlang.org/docs/reference/native-overview.html"

  conflicts_with formula: "kotlin"

  binary "kotlin-native-macos-#{version.major_minor}/bin/cinterop"
  binary "kotlin-native-macos-#{version.major_minor}/bin/jsinterop"
  binary "kotlin-native-macos-#{version.major_minor}/bin/klib"
  binary "kotlin-native-macos-#{version.major_minor}/bin/konan-lldb"
  binary "kotlin-native-macos-#{version.major_minor}/bin/konanc"
  binary "kotlin-native-macos-#{version.major_minor}/bin/kotlinc"
  binary "kotlin-native-macos-#{version.major_minor}/bin/kotlinc-native"
  binary "kotlin-native-macos-#{version.major_minor}/bin/run_konan"

  caveats do
    depends_on_java "6+"
  end
end
