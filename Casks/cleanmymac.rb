cask 'cleanmymac' do
  if MacOS.release <= :snow_leopard
    version '1.11,1417522595'
    sha256 'ac5d4bf36882dd34bdb0a68eb384a6b3aba355be896d03dfa40a120c6bef4a0d'

    # devmate.com is the official download host per the appcast feed
    url "https://dl.devmate.com/com.macpaw.CleanMyMac/#{version.major_minor}/#{version.after_comma}/CleanMyMacClassic-#{version.major_minor}.zip"
    appcast 'http://updates.devmate.com/com.macpaw.CleanMyMac.xml',
            :sha256 => '13bbf950696a9410fec848e80652f2826209b347fdb329b117371e25445951f5'
    app 'CleanMyMac.app'
    # TODO: add uninstall and zap stanzas for legacy app
  elsif MacOS.release <= :lion
    version '2.4,1443544143'
    sha256 '0d08f4d9b36493359f6ca3ff2f96a9b769a8eed4ea017ecbb2d5644f75aafad0'

    # devmate.com is the official download host per the appcast feed
    url "https://dl.devmate.com/com.macpaw.CleanMyMac2/#{version.major_minor_patch}/#{version.after_comma}/CleanMyMac#{version.to_i}-#{version.major_minor_patch}.zip"
    appcast "http://updates.devmate.com/com.macpaw.CleanMyMac#{version.major}.xml",
            :sha256 => '612be3e443f49b6b1d5539611693714b2897b9b774896ac15c048daec76a34cb'
    app "CleanMyMac #{version.major}.app"

    uninstall :launchctl => "com.macpaw.CleanMyMac#{version.major}.Agent"

    zap :delete => [
                     "/Library/LaunchDaemons/com.macpaw.CleanMyMac#{version.major}.Agent.plist",
                     "/Library/PrivilegedHelperTools/com.macpaw.CleanMyMac#{version.major}.Agent",
                     "/Users/Shared/CleanMyMac #{version.major}",
                     "/private/var/run/com.macpaw.CleanMyMac#{version.major}.Agent.socket",
                     "~/Library/Application Support/CleanMyMac #{version.major}",
                     "~/Library/Caches/CleanMyMac #{version.major}",
                     "~/Library/Logs/CleanMyMac #{version.major}.log",
                     "~/Library/Preferences/com.macpaw.CleanMyMac-#{version.major}-Helper.plist",
                     "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.KnowledgeBase.plist",
                     "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.plist",
                   ]
  else
    version :latest
    sha256 :no_check

    homepage '3.1.1'
    # devmate.com is the official download host per the appcast feed
    url "http://localhost:8000/Cleaners%20%26%20Maintenance/CleanMyMac%203/CleanMyMac%20#{homepage}.zip"
    appcast "http://updates.devmate.com/com.macpaw.CleanMyMac#{version.major}.xml",
            :sha256 => 'e62a4026c55f52a3c31a0070e8fb9d49c63244697dff9332a3ab37f74d02c5aa'
    app 'CleanMyMac 3.app'

    postflight do
      suppress_move_to_applications
    end

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
