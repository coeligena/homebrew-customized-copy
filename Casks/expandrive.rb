cask 'expandrive' do
  version :latest
  sha256 :no_check

  url "http://updates.expandrive.com/apps/expandrive/download_latest"
  appcast 'http://updates.expandrive.com/appcast/expandrive.xml?version=3',
          :sha256 => '294368675d6e90aa899f844fe1f330a4acda072a561e326c7dfbdc2ce9f2a333'
  name 'ExpanDrive'
  homepage 'https://www.expandrive.com/expandrive'
  license :commercial

  app 'ExpanDrive.app'

  zap :delete => [
                   '~/Library/Application Support/ExpanDrive',
                   '~/Library/Preferences/com.expandrive.ExpanDrive2.plist',
                   '~/Library/Preferences/com.expandrive.ExpanDrive3.plist',
                 ]
end
