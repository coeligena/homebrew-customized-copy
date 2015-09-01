cask :v1 => 'expandrive' do
  version :latest
  sha256 :no_check

  url "http://updates.expandrive.com/apps/expandrive/download_latest"
  name 'ExpanDrive'
  appcast 'http://updates.expandrive.com/appcast/expandrive.xml?version=3',
          :sha256 => 'bb97d4e362c75588d0c2e67d3cfdbd8e3c6200ebd524325b5f8c81560240ca5c'
  homepage 'https://www.expandrive.com/expandrive'
  license :commercial

  app 'ExpanDrive.app'

  zap :delete => [
                  '~/Library/Application Support/ExpanDrive',
                  '~/Library/Preferences/com.expandrive.ExpanDrive2.plist',
                  '~/Library/Preferences/com.expandrive.ExpanDrive3.plist',
                 ]
end
