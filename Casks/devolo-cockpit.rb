cask 'devolo-cockpit' do
  version '5.1.2'
  sha256 'ebec71ac589ac0fd8b9bf7c0209b8fba01203d52b7009c3073441592b2c4bd97'

  url "https://www.devolo.de/fileadmin/Web-Content/DE/products/hnw/devolo-cockpit/software/devolo-cockpit-v#{version.dots_to_hyphens}.dmg"
  name 'Devolo dLAN Cockpit'
  homepage 'https://www.devolo.de/internet-ueberall-zuhause/devolo-cockpit'

  installer manual: "#{staged_path}/devolo Cockpit Installation.app"

  uninstall script: {
                      executable: '/Applications/devolo/devolo Cockpit uninstall.app/Contents/MacOS/uninstall',
                      sudo:       true,
                    }
end
