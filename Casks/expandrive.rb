cask :v1 => 'expandrive' do
  version :latest
  sha256 :no_check

  url "http://updates.expandrive.com/apps/expandrive/download_latest"
  name 'ExpanDrive'
  appcast 'http://updates.expandrive.com/appcast/expandrive.xml?version=3',
          :sha256 => '5160eb9817c6059ca36f31747a2e7acc08b8f6600237dd0b1d1c598661afe8e7'
  homepage 'https://www.expandrive.com/expandrive'
  license :commercial

  app 'ExpanDrive.app'

  zap :delete => [
                  '~/Library/Application Support/ExpanDrive',
                  '~/Library/Preferences/com.expandrive.ExpanDrive2.plist',
                  '~/Library/Preferences/com.expandrive.ExpanDrive3.plist',
                 ]
end
