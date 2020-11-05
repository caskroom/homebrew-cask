cask "zotero" do
  version "5.0.93"
  sha256 "7998ceccedc0fa2d690c61d506b88aed5108d47b4b087d176796741e88eee041"

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast "https://www.zotero.org/download/"
  name "Zotero"
  desc "Collect, organize, cite, and share research sources"
  homepage "https://www.zotero.org/"

  auto_updates true

  app "Zotero.app"
end
