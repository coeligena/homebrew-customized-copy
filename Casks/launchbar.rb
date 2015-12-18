cask 'launchbar' do

  if MacOS.release <= :mountain_lion
    version '5.6.4'
    sha256 '22a1ec0c10de940e5efbcccd18b8b048d95fb7c63213a01c7976a76d6be69a4d'
    url "https://www.obdev.at/downloads/launchbar/legacy/LaunchBar-#{version}.dmg"
  else
    homepage '6.4.1'
    version :latest
    sha256 :no_check
    url "http://localhost:8000/Tools%20%26%20Utilities/Launchbar/Launchbar-#{homepage}.zip"
    #url "https://www.obdev.at/downloads/launchbar/LaunchBar-#{version}.dmg"
  end

  name 'LaunchBar'
  homepage 'https://www.obdev.at/products/launchbar/'
  license :commercial

  app 'LaunchBar.app'

  zap :delete => [
                  '~/Library/Preferences/at.obdev.LaunchBar.plist',
                  '~/Library/Application Support/LaunchBar',
                 ]

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/LaunchBar.app"
  end
end
