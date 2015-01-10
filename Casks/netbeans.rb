cask :v1 => 'netbeans' do
  version '8.0.2'
  sha256 'a256360136918001b17a6f5ad9fedc0b7ea8a094701cba37718568bc2cbb4c01'

  url "http://download.netbeans.org/netbeans/#{version}/final/bundles/netbeans-#{version}-macosx.dmg"
  homepage 'https://netbeans.org/'
<<<<<<< HEAD
  license :oss
  
  preflight do
      File.open('/tmp/netbeans-choices.xml', 'w') do |f|
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
            <string>baseide</string>
        </dict>
        <dict>
            <key>attributeSetting</key>
            <integer>1</integer>
            <key>choiceAttribute</key>
            <string>selected</string>
            <key>choiceIdentifier</key>
            <string>javase</string>
        </dict>
        <dict>
            <key>attributeSetting</key>
            <integer>1</integer>
            <key>choiceAttribute</key>
            <string>selected</string>
            <key>choiceIdentifier</key>
            <string>webcommon</string>
        </dict>
        <dict>
            <key>attributeSetting</key>
            <integer>1</integer>
            <key>choiceAttribute</key>
            <string>selected</string>
            <key>choiceIdentifier</key>
            <string>extide</string>
        </dict>
        <dict>
            <key>attributeSetting</key>
            <integer>1</integer>
            <key>choiceAttribute</key>
            <string>selected</string>
            <key>choiceIdentifier</key>
            <string>javaee</string>
        </dict>
        <dict>
            <key>attributeSetting</key>
            <integer>0</integer>
            <key>choiceAttribute</key>
            <string>selected</string>
            <key>choiceIdentifier</key>
            <string>javame</string>
        </dict>
        <dict>
            <key>attributeSetting</key>
            <integer>1</integer>
            <key>choiceAttribute</key>
            <string>selected</string>
            <key>choiceIdentifier</key>
            <string>cpp</string>
        </dict>
        <dict>
            <key>attributeSetting</key>
            <integer>1</integer>
            <key>choiceAttribute</key>
            <string>selected</string>
            <key>choiceIdentifier</key>
            <string>groovy</string>
        </dict>
        <dict>
            <key>attributeSetting</key>
            <integer>1</integer>
            <key>choiceAttribute</key>
            <string>selected</string>
            <key>choiceIdentifier</key>
            <string>php</string>
        </dict>
        <dict>
            <key>attributeSetting</key>
            <integer>0</integer>
            <key>choiceAttribute</key>
            <string>selected</string>
            <key>choiceIdentifier</key>
            <string>glassfish</string>
        </dict>
        <dict>
            <key>attributeSetting</key>
            <integer>0</integer>
            <key>choiceAttribute</key>
            <string>selected</string>
            <key>choiceIdentifier</key>
            <string>tomcat</string>
        </dict>
    </array>
</plist>}
      end
  end
  pkg "NetBeans #{version}.mpkg", :apply_choice_changes_xml => '/tmp/netbeans-choices.xml'
  postflight do
    Dir.glob("/Applications/Netbeans/*").sort.each do |f|
      filename = File.basename(f, File.extname(f))
      File.rename(f, "/Applications/Netbeans" + File.extname(f))
    end
    Dir.delete("/Applications/Netbeans/")
  end
  
=======
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "NetBeans #{version}.pkg"
  # Theoretically this uninstall could conflict with a separate GlassFish
  # installation.
  #
  # In practice, it appears that the normal GlassFish installation process does
  # not use the OS X installer and so isn't in the pkgutil receipts database.
  #
  # https://glassfish.java.net/docs/4.0/installation-guide.pdf
  #
  # Arguably if the GlassFish installation by NetBeans inside its own target
  # directory were to conflict with a standard GlassFish installation in the
  # receipts database that would be a bug upstream with NetBeans not prefixing
  # its GlassFish package with "org.netbeans."
  #
  # If this ever becomes an issue, :pkgutil => 'glassfish-.*' could be moved
  # to a separate "zap" stanza.
  #
  # The NetBeans installer does some postflight unpacking of paths installed by
  # the OS X installer, so it's insufficient to just delete the paths exposed
  # by pkgutil, hence the additional ":delete" option below.

  uninstall :pkgutil => 'org.netbeans.ide.*|glassfish-.*',
            :delete => '/Applications/NetBeans'
end
