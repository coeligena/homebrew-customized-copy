cask :v1 => 'sound-siphon' do
  version :latest
  sha256 :no_check

  url 'http://staticz.net/downloads/SoundSiphonInstaller_Latest.dmg'
  name 'Sound Siphon'
  homepage 'http://staticz.com/soundsiphon/'
  license :commercial

  pkg 'SoundSiphonInstaller.pkg'
  
  uninstall :early_script => {
              :executable => "Sound Siphon Uninstaller.app/Contents/MacOS/Sound Siphon Uninstaller",
              :must_succeed => false,
            },
            :pkgutil => 'com.staticz.audio.soundsiphon*',
            :launchctl => 'com.staticz.audio.soundsiphon*',
            :delete => '/Library/Audio/Plug-Ins/HAL/SoundSiphon.driver/'
end
