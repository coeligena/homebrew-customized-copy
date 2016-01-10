cask 'hwsensors' do
  version '6.18.1394'
  sha256 'ac8026b46cfd23ae0365eb7accc149b6b7745b638524a2862f1ad26b51b7e958'
  
  ##{version.split(/\./)[-1]}
  url "http://hwsensors.com/appcast/hwmonitor/HWSensors.#{version}.Update.dmg"
  appcast 'http://hwsensors.com/appcast/appcast.xml'
  homepage 'http://hwsensors.com'
  license :oss

  preflight do
      File.open('/tmp/hwsensors-choices.xml', 'w') do |f|
          # use "\n" for two lines of text
          f.puts %Q{<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
    <array>
        <dict>
            <key>attributeSetting</key>
            <integer>1</integer>
            <key>choiceAttribute</key>
            <string>selected</string>
            <key>choiceIdentifier</key>
            <string>hwmonitor</string>
        </dict>
        <dict>
            <key>attributeSetting</key>
            <integer>1</integer>
            <key>choiceAttribute</key>
            <string>selected</string>
            <key>choiceIdentifier</key>
            <string>fakesmc</string>
        </dict>
        <dict>
            <key>attributeSetting</key>
            <integer>1</integer>
            <key>choiceAttribute</key>
            <string>selected</string>
            <key>choiceIdentifier</key>
            <string>acpisensors</string>
        </dict>
        <dict>
            <key>attributeSetting</key>
            <integer>1</integer>
            <key>choiceAttribute</key>
            <string>selected</string>
            <key>choiceIdentifier</key>
            <string>cpusensors</string>
        </dict>
        <dict>
            <key>attributeSetting</key>
            <integer>1</integer>
            <key>choiceAttribute</key>
            <string>selected</string>
            <key>choiceIdentifier</key>
            <string>gpusensors</string>
        </dict>
        <dict>
            <key>attributeSetting</key>
            <integer>1</integer>
            <key>choiceAttribute</key>
            <string>selected</string>
            <key>choiceIdentifier</key>
            <string>lpcsensors</string>
        </dict>
    </array>
</plist>}
      end
  end
    
  pkg "HWMonitor.pkg", :apply_choice_changes_xml => '/tmp/hwsensors-choices.xml'
  
  caveats "Please move kext to EFI"
  
  uninstall :pkgutil => 'com.netkas.driver.FakeSMC.*',
            :kext => 'com.netkas.driver.FakeSMC',
            :delete => [
              '/Applications/HWMonitor.app',
              '/System/Library/Extensions/FakeSMC.kext'
            ]
end
