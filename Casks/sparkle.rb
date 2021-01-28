cask "sparkle" do
  version "1.24.0"
  sha256 "1293bbb8bbe9ebfc1d9e214e7428fc4bd29df06ebc4cc81a1aa8f6214fc09508"

  url "https://github.com/sparkle-project/Sparkle/releases/download/#{version}/Sparkle-#{version}.tar.xz",
      verified: "github.com/sparkle-project/Sparkle/"
  appcast "https://github.com/sparkle-project/Sparkle/releases.atom"
  name "Sparkle"
  homepage "https://sparkle-project.org/"

  app "Sparkle Test App.app"
end
