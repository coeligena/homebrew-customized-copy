cask :v1 => 'netbeans' do
  version '8.0.1'
  sha256 '701f057b9cb9d4f20054acbbe5298369c459827e86021de6a80738a1fc600f1f'

  url "http://download.netbeans.org/netbeans/#{version}/final/bundles/netbeans-#{version}-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown
  
  preflight do
      File.open('/tmp/netbeans-choices.xml', 'w') do |f|
          # use "\n" for two lines of text
          f.puts %Q{<?xml version="1.0" encoding="UTF-8"?>
              <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
              <plist version="1.0">
              <array>
              <dict>
              <key>childItems</key>
              <array>
              <dict>
              <key>childItems</key>
              <array>
              <dict>
              <key>childItems</key>
              <array/>
              <key>choiceDescription</key>
              <string>Core components of an integrated development environment.</string>
              <key>choiceIdentifier</key>
              <string>baseide</string>
              <key>choiceIsEnabled</key>
              <true/>
              <key>choiceIsSelected</key>
              <integer>1</integer>
              <key>choiceIsVisible</key>
              <true/>
              </dict>
              <dict>
              <key>childItems</key>
              <array/>
              <key>choiceDescription</key>
              <string>Essential tools for programming in Java, including an editor, debugger, profiler, refactoring support, and award winning drag-and-drop GUI design tool (formerly known as Project Matisse).</string>
              <key>choiceIdentifier</key>
              <string>javase</string>
              <key>choiceIsEnabled</key>
              <true/>
              <key>choiceIsSelected</key>
              <integer>1</integer>
              <key>choiceIsVisible</key>
              <true/>
              </dict>
              <dict>
              <key>childItems</key>
              <array/>
              <key>choiceDescription</key>
              <string>Tools for developing HTML5 Web Applications. Includes HTML5 Application project type, page inspector and a visual CSS style editor, editor for HTML, CSS and JavaScript, and a JavaScript debugger.</string>
              <key>choiceIdentifier</key>
              <string>webcommon</string>
              <key>choiceIsEnabled</key>
              <true/>
              <key>choiceIsSelected</key>
              <integer>1</integer>
              <key>choiceIsVisible</key>
              <true/>
              </dict>
              <dict>
              <key>childItems</key>
              <array/>
              <key>choiceDescription</key>
              <string>N/A</string>
              <key>choiceIdentifier</key>
              <string>extide</string>
              <key>choiceIsEnabled</key>
              <true/>
              <key>choiceIsSelected</key>
              <integer>1</integer>
              <key>choiceIsVisible</key>
              <false/>
              </dict>
              <dict>
              <key>childItems</key>
              <array/>
              <key>choiceDescription</key>
              <string>Tools for creating Java web and enterprise applications compatible with Java EE specifications. Includes support for servlets, JSPs, tag libraries, Java Server Faces, Java Persistence API, Enterprise Java Beans, JAX-WS and RESTful web services, Spring and Struts.</string>
              <key>choiceIdentifier</key>
              <string>javaee</string>
              <key>choiceIsEnabled</key>
              <true/>
              <key>choiceIsSelected</key>
              <integer>1</integer>
              <key>choiceIsVisible</key>
              <true/>
              </dict>
              <dict>
              <key>childItems</key>
              <array/>
              <key>choiceDescription</key>
              <string>Comprehensive tool set for creating Java Micro Edition applications for cell phones and portable devices. Includes visual designer, web services connection wizard, and tools for handling device fragmentation problems.</string>
              <key>choiceIdentifier</key>
              <string>javame</string>
              <key>choiceIsEnabled</key>
              <true/>
              <key>choiceIsSelected</key>
              <integer>0</integer>
              <key>choiceIsVisible</key>
              <true/>
              </dict>
              <dict>
              <key>childItems</key>
              <array/>
              <key>choiceDescription</key>
              <string>Tools for developing C and C++ applications. Includes project templates, support for existing projects, advanced editor, debug support, and makefile wizard for configuration management.</string>
              <key>choiceIdentifier</key>
              <string>cpp</string>
              <key>choiceIsEnabled</key>
              <true/>
              <key>choiceIsSelected</key>
              <integer>1</integer>
              <key>choiceIsVisible</key>
              <true/>
              </dict>
              <dict>
              <key>childItems</key>
              <array/>
              <key>choiceDescription</key>
              <string>Provides support for the Groovy language and the Grails framework.</string>
              <key>choiceIdentifier</key>
              <string>groovy</string>
              <key>choiceIsEnabled</key>
              <true/>
              <key>choiceIsSelected</key>
              <integer>1</integer>
              <key>choiceIsVisible</key>
              <true/>
              </dict>
              <dict>
              <key>childItems</key>
              <array/>
              <key>choiceDescription</key>
              <string>Tools for developing PHP applications, including PHP editor and debugger, project management, integration with Apache server, support for MySQL and other databases, FTP upload and download, JavaScript support and other features.</string>
              <key>choiceIdentifier</key>
              <string>php</string>
              <key>choiceIsEnabled</key>
              <true/>
              <key>choiceIsSelected</key>
              <integer>1</integer>
              <key>choiceIsVisible</key>
              <true/>
              </dict>
              <dict>
              <key>childItems</key>
              <array/>
              <key>choiceDescription</key>
              <string>Provides faster startup and improved responsiveness by turning on the installed features only when they are required. It is the perfect balance between rich functionality and low memory/CPU consumption. If memory/CPU is not a limited resource for you, feel free to disable this item and get all NetBeans IDE functionality at once.</string>
              <key>choiceIdentifier</key>
              <string>ergonomics</string>
              <key>choiceIsEnabled</key>
              <true/>
              <key>choiceIsSelected</key>
              <integer>1</integer>
              <key>choiceIsVisible</key>
              <true/>
              </dict>
              </array>
              <key>choiceDescription</key>
              <string>NetBeans IDE</string>
              <key>choiceIdentifier</key>
              <string>netbeans</string>
              <key>choiceIsEnabled</key>
              <true/>
              <key>choiceIsSelected</key>
              <integer>1</integer>
              <key>choiceIsVisible</key>
              <true/>
              </dict>
              <dict>
              <key>childItems</key>
              <array/>
              <key>choiceDescription</key>
              <string>GlassFish Server Open Source Edition 4.1 is the latest release of the GlassFish Application Server, is a compliant implementation of the Java EE 6 platform, and features a modular, lightweight and extensible architecture.</string>
              <key>choiceIdentifier</key>
              <string>glassfish</string>
              <key>choiceIsEnabled</key>
              <true/>
              <key>choiceIsSelected</key>
              <integer>0</integer>
              <key>choiceIsVisible</key>
              <true/>
              </dict>
              <dict>
              <key>childItems</key>
              <array/>
              <key>choiceDescription</key>
              <string>Open source web container for Java Servlet and JSP specifications.</string>
              <key>choiceIdentifier</key>
              <string>tomcat</string>
              <key>choiceIsEnabled</key>
              <true/>
              <key>choiceIsSelected</key>
              <integer>0</integer>
              <key>choiceIsVisible</key>
              <true/>
              </dict>
              </array>
              <key>choiceIdentifier</key>
              <string>__ROOT_CHOICE_IDENT_netbeans-Title</string>
              <key>choiceIsEnabled</key>
              <true/>
              <key>choiceIsSelected</key>
              <integer>-1</integer>
              <key>choiceIsVisible</key>
              <true/>
              </dict>
              </array>
              </plist>}
      end
  end
  pkg "NetBeans #{version}.mpkg"
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
  #
  ## |glassfish-.*
  uninstall :pkgutil => 'org.netbeans.ide.*',
            :delete => '/Applications/NetBeans'
end
