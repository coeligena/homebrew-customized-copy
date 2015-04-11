cask :v1 => 'cleanmymac' do
  version :latest
  sha256 :no_check

  homepage '2.3.4'

  if MacOS.release <= :snow_leopard
    # devmate.com is the official download host per the vendor homepage
    url "http://localhost:8000/Cleaners%20%26%20Maintenance/CleanMyMac/CleanMyMac%20#{homepage}.dmg"
    url 'http://dl.devmate.com/com.macpaw.CleanMyMac/CleanMyMacClassic.dmg'
    appcast 'http://updates.devmate.com/com.macpaw.CleanMyMac.xml'
    app 'CleanMyMac.app'
    # todo: add uninstall and zap stanzas for legacy app
  elsif MacOS.release <= :lion
    # devmate.com is the official download host per the vendor homepage
    url "http://localhost:8000/Cleaners%20%26%20Maintenance/CleanMyMac/CleanMyMac%20#{homepage}.dmg"
    appcast 'http://updates.devmate.com/com.macpaw.CleanMyMac2.xml'
    app 'CleanMyMac 2.app'

    uninstall :launchctl => 'com.macpaw.CleanMyMac2.Agent'

    zap :delete => [
      '/Library/LaunchDaemons/com.macpaw.CleanMyMac2.Agent.plist',
      '/Library/PrivilegedHelperTools/com.macpaw.CleanMyMac2.Agent',
      '/Users/Shared/CleanMyMac 2',
      '/private/var/run/com.macpaw.CleanMyMac2.Agent.socket',
      '~/Library/Application Support/CleanMyMac 2',
      '~/Library/Caches/CleanMyMac 2',
      '~/Library/Logs/CleanMyMac 2.log',
      '~/Library/Preferences/com.macpaw.CleanMyMac-2-Helper.plist',
      '~/Library/Preferences/com.macpaw.CleanMyMac2.KnowledgeBase.plist',
      '~/Library/Preferences/com.macpaw.CleanMyMac2.plist',
    ]
  else
    # devmate.com is the official download host per the vendor homepage
    url 'http://dl.devmate.com/com.macpaw.CleanMyMac3/CleanMyMac3.dmg'
    appcast 'http://updateinfo.devmate.com/com.macpaw.CleanMyMac3/updates.xml'
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
  end

  name 'CleanMyMac'
  license :commercial
  
  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/CleanMyMac 2.app"
  end
end
