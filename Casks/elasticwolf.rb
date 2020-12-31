cask "elasticwolf" do
  version "5.1.7"
  sha256 "c5a69e5c9038dd9724548848251df22bfe37b867c548eb47349358bfbc94c863"

  url "https://s3-us-gov-west-1.amazonaws.com/elasticwolf/ElasticWolf-osx-#{version}.zip",
      verified: "s3-us-gov-west-1.amazonaws.com/elasticwolf/"
  appcast "https://aws.amazon.com/tools/aws-elasticwolf-client-console/"
  name "AWS ElasticWolf Client Console"
  homepage "https://aws.amazon.com/tools/aws-elasticwolf-client-console/"

  app "ElasticWolf.app"
end
