cask :v1 => 'coda' do
  version :latest
  sha256 :no_check
  
  homepage '2.5.5'
  url "http://localhost:8000/Development/Coda/Coda-#{homepage}.dmg"
  appcast 'http://www.panic.com/updates/update.php'
  name 'Coda'
  license :commercial

  app 'Coda 2.app'

  zap :delete => [
                  '~/Library/Application Support/Coda 2',
                  '~/Library/Preferences/com.panic.Coda2.plist',
                 ]

   postflight do
     system 'tag', '-a', 'Purple', "#{staged_path}/Coda 2.app"
   end
 end
