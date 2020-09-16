cask "splice" do
  version "3.6.4"
  sha256 "2c528f26b98079cb7a6f3087f3f223cf439e6b4de26e1b2dd961b43731c795d3"

  # splicedesktop.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://splicedesktop.s3.amazonaws.com/darwin/stable/Splice.app.zip"
  appcast "https://api.splice.com/v2/desktop/darwin/stable/latest?v=0.0.0"
  name "Splice"
  homepage "https://splice.com/"

  app "Splice.app"

  uninstall quit: "com.splice.Splice"

  zap trash: [
    "~/Library/Application Support/*Splice*",
    "~/Library/Caches/com.splice*",
    "~/Library/Preferences/com.splice*",
  ]
end
