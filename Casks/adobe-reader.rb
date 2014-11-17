class AdobeReader < Cask
    version '11.0.09'
    sha256 '259957f1434bcdf47dc6a7c12affc40dd3c17288009dc229aa51f20ec4e8b1c5'
    
    url "http://ardownload.adobe.com/pub/adobe/reader/mac/11.x/#{version}/en_US/AdbeRdr11009_en_US.dmg"
    homepage 'http://www.adobe.com/products/reader.html'
    license :gratis
    
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

    uninstall :pkgutil => 'com.adobe.acrobat.reader.11009.*'

end
