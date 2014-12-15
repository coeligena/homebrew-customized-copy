cask :v1 => 'supertab' do
  version '1.2'
  sha256 'c18d4c4609cc99e976e3d2b32156e12450ca71dc71ec5cba35aa1b8b2137ee70'

  url "http://www.supertab.me/SuperTab.dmg"
  homepage 'http://www.supertab.me/'
  license :commercial

  pkg 'Double-Click-To-Install.pkg'

  uninstall :pkgutil => "com.spritec.supertab.*",
            :delete => '/Applications/SuperTab.app'
  zap       :delete => [
                        '~/Library/Preferences/com.spritec.supertab.plist',
                       ]
end
