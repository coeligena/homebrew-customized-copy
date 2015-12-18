cask 'disk-drill' do
  version :latest
  sha256 :no_check

  url "http://dl.cleverfiles.com/diskdrill.dmg"
  appcast 'http://www.cleverfiles.com/releases/auto-update/dd2-newestr.xml'
          :sha256 => '13eb31a4e92818faf847cc8d484ebed32750341f15faff6ef205921372efc9d8'
  name 'Disk Drill'
  homepage 'http://www.cleverfiles.com/'
  license :freemium

  app 'Disk Drill.app'

  uninstall :delete => '/Library/Application Support/CleverFiles'

  zap :delete => [
                  '~/Library/Application Support/DiskDrill',
                  '~/Library/Caches/com.cleverfiles.Disk_Drill',
                  '~/Library/Logs/DiskDrill.log',
                 ]
end
