cask :v1 => 'expandrive' do
  version :latest
  sha256 :no_check

  url "http://updates.expandrive.com/apps/expandrive/download_latest"
  name 'ExpanDrive'
  appcast 'http://updates.expandrive.com/appcast/expandrive.xml?version=3',
          :sha256 => 'a40c6bc63dd8b9afe454a0976787cb53b8356f9298473bbce1b999a9d3f4bc3f'
  homepage 'https://www.expandrive.com/expandrive'
  license :commercial

  app 'ExpanDrive.app'

  zap :delete => [
                  '~/Library/Application Support/ExpanDrive',
                  '~/Library/Preferences/com.expandrive.ExpanDrive2.plist',
                  '~/Library/Preferences/com.expandrive.ExpanDrive3.plist',
                 ]
end
