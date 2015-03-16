cask :v1 => 'adobe-reader' do
    version '11.0.10'
    sha256 '6aeb93bdd0da7662721e8a81493aef8bd5610d7386ac359bb35f089fbe0ee391'
    
    url "http://ardownload.adobe.com/pub/adobe/reader/mac/#{version.to_i}.x/#{version}/en_US/AdbeRdr#{version.gsub('.', '')}_en_US.dmg"
	name 'Adobe Reader'
    homepage 'http://www.adobe.com/products/reader.html'
    license :gratis
  tags :vendor => 'Adobe'
    
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

  uninstall :pkgutil => "com.adobe.acrobat.reader.#{version.gsub('.', '')}.*",
            :delete => '/Applications/Adobe Reader.app'
  zap       :delete => [
                        "~/Library/Application Support/Adobe/Acrobat/#{version.sub(%r{(\d+)\.(\d+).*},'\1.\2')}",
                        '~/Library/Preferences/com.adobe.Reader.plist',
                        '~/Library/Caches/com.adobe.Reader'
                       ]
end
