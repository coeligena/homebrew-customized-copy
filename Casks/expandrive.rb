cask :v1 => 'expandrive' do
  version :latest
  sha256 :no_check

  url "http://updates.expandrive.com/apps/expandrive/download_latest"
  name 'ExpanDrive'
  appcast 'http://updates.expandrive.com/appcast/expandrive.xml?version=3',
          :sha256 => '5716be02c88b6c621d5219b1867b9eebd99ad21b2cbea406581523032a3fc7b3'
  homepage 'https://www.expandrive.com/expandrive'
  license :commercial

  app 'ExpanDrive.app'

  zap :delete => [
                  '~/Library/Application Support/ExpanDrive',
                  '~/Library/Preferences/com.expandrive.ExpanDrive2.plist',
                  '~/Library/Preferences/com.expandrive.ExpanDrive3.plist',
                 ]
end
