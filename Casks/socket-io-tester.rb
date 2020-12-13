cask "socket-io-tester" do
  version "1.2.3"
  sha256 "dad65ffd41c8062d5bf5983af233307efc3257ee4c675a5e97f23f7694916e73"

  url "https://github.com/AppSaloon/socket.io-tester/releases/download/v#{version}/socket-io-tester-darwin-x64.zip",
      verified: "github.com/AppSaloon/socket.io-tester/"
  appcast "https://github.com/AppSaloon/socket.io-tester/releases.atom"
  name "socket-io-tester.app"
  homepage "https://appsaloon.github.io/socket.io-tester/"

  app "socket-io-tester-darwin-x64/socket-io-tester.app"
end
