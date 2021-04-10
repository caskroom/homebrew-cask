cask "clix" do
  version "Standalone,2.4.0.0"
  sha256 :no_check

  url "ftp://rixstep.com/CLIX.zip"
  name "CLIX"
  homepage "https://rixstep.com/4/0/clix/"

  app "CLIX/CLIX.app"

  preflight do
    set_permissions "#{staged_path}/CLIX/CLIX.app", "0755"
  end

  postflight do
    set_permissions "#{appdir}/CLIX/CLIX.app", "0700"
  end
end
