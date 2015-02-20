cask :v1 => 'launchbar' do
  version :latest
  sha256 :no_check

  homepage '6.1.6'
  url "http://localhost:8000/Tools%20%26%20Utilities/Launchbar/Launchbar-#{homepage}.dmg"
  name 'Launchpad Manager'
  license :commercial

  app 'LaunchBar.app'

  zap :delete => [
                  '~/Library/Preferences/at.obdev.LaunchBar.plist',
                  '~/Library/Application Support/LaunchBar/Configuration.plist',
                  '~/Library/Application Support/LaunchBar/CustomShortcuts.plist',
                  # todo unsure if these contain user-created content
                  # '~/Library/Application Support/LaunchBar/Actions',
                  # '~/Library/Application Support/LaunchBar/Snippets',
                 ]

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/LaunchBar.app"
  end
end
