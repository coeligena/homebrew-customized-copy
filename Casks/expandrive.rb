cask :v1 => 'expandrive' do
  version :latest
  sha256 :no_check

  url "http://updates.expandrive.com/apps/expandrive/download_latest"
  name 'ExpanDrive'
  appcast 'http://updates.expandrive.com/appcast/expandrive.xml?version=3',
          :sha256 => '33c61da85e936d948e852319804fc7bf4557c643b381639ac69369fb7f8044dc'
  homepage 'https://www.expandrive.com/expandrive'
  license :commercial

  app 'ExpanDrive.app'

  zap :delete => [
                  '~/Library/Application Support/ExpanDrive',
                  '~/Library/Preferences/com.expandrive.ExpanDrive2.plist',
                  '~/Library/Preferences/com.expandrive.ExpanDrive3.plist',
                 ]
end
