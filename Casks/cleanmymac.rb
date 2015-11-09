cask :v1 => 'cleanmymac' do
  if MacOS.release <= :snow_leopard
    version '1.11-1417522595'
    sha256 'ac5d4bf36882dd34bdb0a68eb384a6b3aba355be896d03dfa40a120c6bef4a0d'

    # devmate.com is the official download host per the appcast feed
    url "http://dl.devmate.com/com.macpaw.CleanMyMac/#{version.sub(%r{-.*$},'')}/#{version.sub(%r{.*?-},'')}/CleanMyMacClassic-#{version.sub(%r{-.*$},'')}.zip"
    appcast 'http://updates.devmate.com/com.macpaw.CleanMyMac.xml'
    app 'CleanMyMac.app'
    # todo: add uninstall and zap stanzas for legacy app
  elsif MacOS.release <= :lion
    version '2.3.5-1427986644'
    sha256 '16e192edcf58f25c6763349ef0e5194268bec4d000912b64b34f5897b4784097'
    # devmate.com is the official download host per the appcast feed
    url "http://dl.devmate.com/com.macpaw.CleanMyMac2/#{version.sub(%r{-.*$},'')}/#{version.sub(%r{.*?-},'')}/CleanMyMac#{version.to_i}-#{version.sub(%r{-.*$},'')}.zip"
    appcast "http://updates.devmate.com/com.macpaw.CleanMyMac#{version.to_i}.xml"
    app "CleanMyMac #{version.to_i}.app"

    uninstall :launchctl => "com.macpaw.CleanMyMac#{version.to_i}.Agent"

    zap :delete => [
      "/Library/LaunchDaemons/com.macpaw.CleanMyMac#{version.to_i}.Agent.plist",
      "/Library/PrivilegedHelperTools/com.macpaw.CleanMyMac#{version.to_i}.Agent",
      "/Users/Shared/CleanMyMac #{version.to_i}",
      "/private/var/run/com.macpaw.CleanMyMac#{version.to_i}.Agent.socket",
      "~/Library/Application Support/CleanMyMac #{version.to_i}",
      "~/Library/Caches/CleanMyMac #{version.to_i}",
      "~/Library/Logs/CleanMyMac #{version.to_i}.log",
      "~/Library/Preferences/com.macpaw.CleanMyMac-#{version.to_i}-Helper.plist",
      "~/Library/Preferences/com.macpaw.CleanMyMac#{version.to_i}.KnowledgeBase.plist",
      "~/Library/Preferences/com.macpaw.CleanMyMac#{version.to_i}.plist",
    ]
  else
    version :latest
    sha256 :no_check

    homepage '3.1.1'
    # devmate.com is the official download host per the appcast feed
    url "http://localhost:8000/Cleaners%20%26%20Maintenance/CleanMyMac%203/CleanMyMac%20#{homepage}.zip"
    app 'CleanMyMac 3.app'

    uninstall :launchctl => "com.macpaw.CleanMyMac3.Agent"

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
  
  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/CleanMyMac 3.app"
    system 'open', "#{ENV['CUSTOM_CASK_DIR']}/Cleaners & Maintenance/CleanMyMac 3/"
    suppress_move_to_applications
  end
  
  caveats <<-EOS.undent
    DO MORE...
  EOS
  
  name 'CleanMyMac'
  #homepage 'https://macpaw.com/cleanmymac'
  license :commercial
end
