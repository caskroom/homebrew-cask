cask "go-agent" do
  version "19.1.0-8469"
  sha256 "113b21b10590c7a066bdd0597825b672bfed8b33b9cda756b9d6fea42a7c7c3e"

  url "https://download.gocd.io/binaries/#{version}/osx/go-agent-#{version}-osx.zip",
      verified: "download.gocd.io/binaries/"
  name "Go Agent"
  name "GoCD Agent"
  desc "Agent for the Go Continuous Delivery platform"
  homepage "https://www.gocd.org/"

  livecheck do
    url "https://github.com/gocd/gocd/releases"
    strategy :git
  end

  app "Go Agent.app"
end
