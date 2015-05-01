cask :v1 => 'android-studio' do
  version '1.2.0.12'
  sha256 'a8d43f96bb29dd7636af7cc74215dc4a8b71feaaf064a1e8a06c79231a459e1e'

  # google.com is the official download host per the vendor homepage
  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-141.1890965-mac.zip"
  name 'Android Studio'
  homepage 'https://developer.android.com/sdk/'
  license :apache

  app 'Android Studio.app'

  caveats <<-EOS.undent
    #{token} requires Java. You can install the latest version with
    brew cask install java
  EOS
  zap :delete => [
    '~/Library/Preferences/AndroidStudio*',
    '~/Library/Preferences/com.google.android.studio.plist',
    '~/Library/Application\ Support/AndroidStudio*',
    '~/Library/Logs/AndroidStudio*',
    '~/Library/Caches/AndroidStudio*',
  ],
  :rmdir => '~/AndroidStudioProjects'
end
