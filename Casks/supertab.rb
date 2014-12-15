cask :v1 => 'supertab' do
  version '1.2'
  sha256 '0c6f10647804865b440c9e46ea008b0800e00d6b174a6c488694e1efc01afc18'

  url "http://www.supertab.me/SuperTab.dmg"
  homepage 'http://www.supertab.me/'
  license :commercial

  pkg 'Double-Click-To-Install.pkg'

  uninstall :quit => 'com.spritec.supertab',
            :pkgutil => "com.spritec.supertab.*",
            :delete => '/Applications/SuperTab.app'
  zap       :delete => [
                        '~/Library/Preferences/com.spritec.supertab.decorations',
                        '~/Library/Preferences/com.spritec.supertab.downloads',
                        '~/Library/Preferences/com.spritec.supertab.hotkeys',
                        '~/Library/Preferences/com.spritec.supertab.plist',
                        '~/Library/Preferences/com.spritec.supertab.settings',
                        '~/Library/Preferences/com.spritec.supertab.state'
                       ]
end
