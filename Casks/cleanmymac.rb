cask :v1 => 'cleanmymac' do
  version :latest
  sha256 :no_check

  homepage '3'
  url "http://localhost:8000/Cleaners%20%26%20Maintenance/CleanMyMac%203/CleanMyMac#{homepage}.dmg"
  appcast 'http://updateinfo.devmate.com/com.macpaw.CleanMyMac3/updates.xml'
  name 'CleanMyMac'
  license :commercial

  app 'CleanMyMac 3.app'

  uninstall :launchctl => 'com.macpaw.CleanMyMac3.Agent'

  zap :delete => [
    '/Library/LaunchDaemons/com.macpaw.CleanMyMac3.Agent.plist',
    '/Library/PrivilegedHelperTools/com.macpaw.CleanMyMac3.Agent',
    '/Users/Shared/CleanMyMac 3',
    '/private/var/run/com.macpaw.CleanMyMac3.Agent.socket',
    '~/Library/Application Support/CleanMyMac 3',
    '~/Library/Application Support/CleanMyMac 3 Menu',
    '~/Library/Caches/CleanMyMac 3',
    '~/Library/Logs/CleanMyMac 3.log',
    '~/Library/Preferences/com.macpaw.CleanMyMac-3-Helper.plist',
    '~/Library/Preferences/com.macpaw.CleanMyMac3.KnowledgeBase.plist',
    '~/Library/Preferences/com.macpaw.cleanmymac3.menu.plist',
    '~/Library/Preferences/com.macpaw.CleanMyMac3.plist',
  ]
  
  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/CleanMyMac 3.app"
    system 'open', "#{ENV['CUSTOM_CASK_DIR']}/Cleaners & Maintenance/CleanMyMac 3/"
    suppress_move_to_applications :key => 'suppressMoveToApplications'
  end
  
  caveats <<-EOS.undent
    DO MORE...
  EOS
end
