cask :v1 => 'alfred' do
  version :latest
  sha256 :no_check

  homepage '2.7.1_387'
  url "http://localhost:8000/Tools%20%26%20Utilities/Alfred/Alfred-#{homepage}.zip"
  name 'Alfred'
  homepage 'http://www.alfredapp.com/'
  license :freemium

  app 'Alfred 2.app'
  app 'Alfred 2.app/Contents/Preferences/Alfred Preferences.app'

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Alfred 2.app"
    system 'open', "#{ENV['CUSTOM_CASK_DIR']}/Tools & Utilities/Alfred/"
    suppress_move_to_applications :key => 'suppressMoveToApplications'
  end

  uninstall :quit => 'com.runningwithcrayons.Alfred-2'
  
  zap :delete => [
                  '~/Library/Application Support/Alfred 2',
                  '~/Library/Caches/com.runningwithcrayons.Alfred-2',
                  '~/Library/Caches/com.runningwithcrayons.Alfred-Preferences',
                  '~/Library/Preferences/com.runningwithcrayons.Alfred-2.plist',
                  '~/Library/Preferences/com.runningwithcrayons.Alfred-Preferences.plist',
                  '~/Library/Saved Application State/com.runningwithcrayons.Alfred-Preferences.savedState'
                 ]

  caveats <<-EOS.undent
    DO MORE...
  EOS
end
