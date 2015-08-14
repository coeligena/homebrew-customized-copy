cask :v1 => 'github' do
  version :latest
  sha256 :no_check

  # cloudfront.net is the official download host per the vendor homepage
  url "https://central.github.com/mac/latest"
  appcast 'https://central.github.com/mac/appcast.xml',
          :sha256 => 'f67f6cc4f51758d15ff4e55173ce2976f312e5bb551b74d00198fd0d41dd9109'
  name 'GitHub'
  homepage 'https://mac.github.com/'
  license :oss

  app 'GitHub Desktop.app'
  binary 'GitHub Desktop.app/Contents/MacOS/github_cli', :target => 'github'

  postflight do
    suppress_move_to_applications
  end

  uninstall :launchctl => [
                           'com.github.GitHub.GHInstallCLI'
                          ]

  zap :delete => [
                  '~/Library/Application Support/GitHub for Mac',
                  '~/Library/Application Support/ShipIt_stderr.log',
                  '~/Library/Application Support/ShipIt_stdout.log',
                  '~/Library/Application Support/com.github.GitHub.ShipIt',
                  '~/Library/Application Support/com.github.atom.ShipIt',
                  '~/Library/Application Support/com.github.atom-shell.ShipIt',
                  '~/Library/Preferences/com.github.atom-shell.plist',
                  '~/Library/Preferences/com.github.atom.plist',
                  '~/Library/Preferences/com.github.Github',
                  '~/Library/Preferences/com.github.Github.plist',
                  '~/Library/Caches/GitHub for Mac',
                  '~/Library/Caches/com.github.GitHub',
                  '~/Library/Containers/com.github.GitHub.Conduit',
                 ]
end
