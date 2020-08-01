cask "easy-move-plus-resize" do
  version "1.3.0"
  sha256 "da8c7c8e365c348f06c80cdc075271d85d16a954bf5f9494786dcb8251bc27b6"

  url "https://github.com/dmarcotte/easy-move-resize/releases/download/#{version}/Easy.Move.Resize.app.zip"
  appcast "https://github.com/dmarcotte/easy-move-resize/releases.atom"
  name "Easy Move+Resize"
  homepage "https://github.com/dmarcotte/easy-move-resize"

  app "Easy Move+Resize.app"
end
