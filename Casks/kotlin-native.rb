require 'fileutils'
require 'open3'
require 'tmpdir'
tmpdir = Dir.mktmpdir

cask 'kotlin-native' do
  version '1.3.31'
  sha256 '964e54649f93d3f269f3753cb7b97739d03c26fe2237a144dcecb92779c36d77'

  # github.com/JetBrains/kotlin/releases/download/v was verified as official when first introduced to the cask
  url "https://github.com/JetBrains/kotlin/releases/download/v#{version}/kotlin-native-macos-#{version}.tar.gz"
  appcast 'https://github.com/JetBrains/kotlin-native/releases.atom'
  name 'Kotlin Native'
  homepage 'https://kotlinlang.org/docs/reference/native-overview.html'

  conflicts_with formula: 'kotlin'

  binary "kotlin-native-macos-#{version}/bin/cinterop"
  binary "kotlin-native-macos-#{version}/bin/jsinterop"
  binary "kotlin-native-macos-#{version}/bin/klib"
  binary "kotlin-native-macos-#{version}/bin/konan-lldb"
  binary "kotlin-native-macos-#{version}/bin/konanc"
  binary "kotlin-native-macos-#{version}/bin/kotlinc"
  binary "kotlin-native-macos-#{version}/bin/kotlinc-native"
  binary "kotlin-native-macos-#{version}/bin/run_konan"

  postflight do
    puts 'Testing kotlinc-native...'
    File.write "#{tmpdir}/test.kt", <<~EOS
      fun main(args: Array<String>) {
        println("Hello World!")
      }
    EOS
    system 'kotlinc-native', "#{tmpdir}/test.kt", '-o', "#{tmpdir}/test.kexe"
  end

  uninstall delete: "#{staged_path}/#{token}"

  caveats depends_on_java '6+'
  caveats <<~EOS
    See https://github.com/JetBrains/kotlin-native/blob/master/README.md
    for Prerequisites using Kotlin Native.
  EOS
end
