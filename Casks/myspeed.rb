cask :v1 => 'myspeed' do
  #    version '1153' # 1.43
  #    sha256 '22a77eaf5fec64e3055bc68f5287b9d2d94a0c34abc83e5948d0ff591c8cf7f5'
  version '6311' # 6 Beta
  sha256 '5724a140b264b15b08a96b48ba7946834718282a180bfdd8f0103997f9bcdc81'
  
  url "https://www.enounce.com/downloads/#{version}/EnounceMySpeed.dmg"
  homepage 'https://www.enounce.com/myspeed1-mac-download'
  license :trial
  
  pkg "MySpeed for Mac.pkg"

  uninstall :quit    => [
              'com.enounce.MySpeed',
              'com.enounce.MySpeedInjector'
            ],
            :pkgutil => 'com.enounce.MySpeed*',
            :delete  => [
              '/Applications/MySpeed.app',
              '/Library/Internet Plug-Ins/NPMySpeedPlugin.plugin',
              '/Library/ScriptingAdditions/MySpeed.osax'
            ]
  zap :delete => [
          '~/Library/Application Support/Enounce',
          '~/Library/Caches/com.enounce.MySpeed',
          '~/Library/Preferences/com.enounce.MySpeed.plist'
      ],
      :rmdir   => [
          '~/Library/Application Support/Enounce'
      ]
  uninstall_postflight do
      system '/bin/rm', '-Rf', "~/.en*"
  end
end
