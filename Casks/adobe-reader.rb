cask :v1 => 'adobe-reader' do
  version '2015.007.20033'
  sha256 '46703ba27599512223e9b89c308075a0ddb625287be8e22a87574dfc70a77eb5'
    
  url "http://ardownload.adobe.com/pub/adobe/reader/mac/AcrobatDC/#{version.gsub('.', '')[2..-1]}/AcroRdrDC_#{version.gsub('.', '')[2..-1]}_MUI.dmg"
  name 'Adobe Acrobat Reader DC'
    homepage 'http://www.adobe.com/products/reader.html'
    license :gratis
  tags :vendor => 'Adobe'

  depends_on :macos => '>= 10.9'

  pkg "AcroRdrDC_#{version.gsub('.', '')[2..-1]}_MUI.pkg"
    
  preflight do
        File.open('/tmp/adobe-reader-choices.xml', 'w') do |f|
            # use "\n" for two lines of text
            f.puts %Q{<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
    <array>
    <dict>
    <key>attributeSetting</key>
    <true/>
    <key>choiceAttribute</key>
    <string>visible</string>
    <key>choiceIdentifier</key>
    <string>coreapp</string>
    </dict>
    <dict>
    <key>attributeSetting</key>
    <false/>
    <key>choiceAttribute</key>
    <string>enabled</string>
    <key>choiceIdentifier</key>
    <string>coreapp</string>
    </dict>
    <dict>
    <key>attributeSetting</key>
    <integer>1</integer>
    <key>choiceAttribute</key>
    <string>selected</string>
    <key>choiceIdentifier</key>
    <string>coreapp</string>
    </dict>
    <dict>
    <key>attributeSetting</key>
    <false/>
    <key>choiceAttribute</key>
    <string>visible</string>
    <key>choiceIdentifier</key>
    <string>browserplugin</string>
    </dict>
    <dict>
    <key>attributeSetting</key>
    <true/>
    <key>choiceAttribute</key>
    <string>enabled</string>
    <key>choiceIdentifier</key>
    <string>browserplugin</string>
    </dict>
    <dict>
    <key>attributeSetting</key>
    <integer>0</integer>
    <key>choiceAttribute</key>
    <string>selected</string>
    <key>choiceIdentifier</key>
    <string>browserplugin</string>
    </dict>
    <dict>
    <key>attributeSetting</key>
    <false/>
    <key>choiceAttribute</key>
    <string>visible</string>
    <key>choiceIdentifier</key>
    <string>appsupport</string>
    </dict>
    <dict>
    <key>attributeSetting</key>
    <true/>
    <key>choiceAttribute</key>
    <string>enabled</string>
    <key>choiceIdentifier</key>
    <string>appsupport</string>
    </dict>
    <dict>
    <key>attributeSetting</key>
    <integer>1</integer>
    <key>choiceAttribute</key>
    <string>selected</string>
    <key>choiceIdentifier</key>
    <string>appsupport</string>
    </dict>
    </array>
</plist>}
        end
    end
    pkg 'Adobe Reader XI Installer.pkg', :apply_choice_changes_xml => '/tmp/adobe-reader-choices.xml'

  uninstall :pkgutil => 'com.adobe.acrobat.DC.reader.*',
            :delete => '/Applications/Adobe Acrobat Reader DC.app'
  zap       :delete => [
                        '~/Library/Application Support/Adobe/Acrobat/DC',
                        '~/Library/Preferences/Adobe/Acrobat/DC',
                        '~/Library/Preferences/com.adobe.Reader.plist',
                        '~/Library/Caches/com.adobe.Reader'
                       ]
end
