cask :v1 => 'github' do
  version :latest
  sha256 :no_check

  # cloudfront.net is the official download host per the vendor homepage
  url "https://central.github.com/mac/latest"
  appcast 'https://central.github.com/mac/appcast.xml',
          :sha256 => 'c45108bde35ed7836d995a083ea6eb837cc43e7e6944772f95d1c8eff2b8f886'
  name 'GitHub Desktop'
  homepage 'https://desktop.github.com/'
  license :gratis

  app 'GitHub Desktop.app'
  binary 'GitHub Desktop.app/Contents/MacOS/github_cli', :target => 'github'

  postflight do
    suppress_move_to_applications
  end

  uninstall :launchctl => [
                           'com.github.GitHub.Conduit',
                           'com.github.GitHub.GHInstallCLI'
                          ]

  zap :delete => [
                  '~/Library/Application Support/GitHub for Mac',
                  '~/Library/Application Support/ShipIt_stderr.log',
                  '~/Library/Application Support/ShipIt_stdout.log',
                  '~/Library/Application Support/com.github.GitHub',
                  '~/Library/Application Support/com.github.GitHub.ShipIt',
                  '~/Library/Application Support/com.github.atom.ShipIt',
                  '~/Library/Application Support/com.github.atom-shell.ShipIt',
                  '~/Library/Caches/GitHub for Mac',
                  '~/Library/Caches/com.github.GitHub',
                  '~/Library/Containers/com.github.GitHub.Conduit',
                  '~/Library/Preferences/com.github.atom-shell.plist',
                  '~/Library/Preferences/com.github.atom.plist',
                  '~/Library/Preferences/com.github.Github',
                  '~/Library/Preferences/com.github.GitHub.LSSharedFileList.plist',
                  '~/Library/Preferences/com.github.GitHub.plist',
                 ]
end
