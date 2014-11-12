class GoogleCloudSdk < Cask
  homepage 'https://cloud.google.com/sdk/'
  url 'https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.tar.gz'
  version 'latest'
  sha256 :no_check
  license :apache

  installer :script => 'google-cloud-sdk/install.sh',
            :args => %w{--usage-reporting false --bash-completion false --path-update false --rc-path false},
            :sudo => false

  caveats do
    "#{title} is installed at #{staged_path}/#{title}.

Add your profile.

for bash users
  source '#{staged_path}/#{title}/path.bash.inc'
  source '#{staged_path}/#{title}/completion.bash.inc'

for zsh users
  source '#{staged_path}/#{title}/path.zsh.inc'
  source '#{staged_path}/#{title}/completion.zsh.inc'


Enjoy, Google Cloud SDK.
"
  end
end
