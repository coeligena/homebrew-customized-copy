cask :v1 => 'coda' do
  version :latest
  sha256 :no_check

  homepage '2.5.7'
  url "http://localhost:8000/Development/Coda/Coda-#{homepage}.dmg"
  name 'Coda'
  homepage 'https://panic.com/Coda/'
  license :commercial
  tags :vendor => 'Panic'

  app 'Coda 2.app'

  zap :delete => [
    '~/Library/Application Support/Coda 2',
    '~/Library/Application Support/Growl/Tickets/Coda 2.growlTicket',
    '~/Library/Caches/com.panic.Coda2',
    '~/Library/Caches/com.apple.helpd/Generated/com.panic.Coda2.help',
    '~/Library/Preferences/com.panic.Coda2.plist',
    '~/Library/Preferences/com.panic.Coda2.LSSharedFileList.plist',
    '~/Library/Preferences/com.panic.Coda2.LSSharedFileList.plist.lockfile',
    '~/Library/Saved Application State/com.panic.Coda2.savedState'
  ]

  depends_on :macos => '>= :lion'

   postflight do
     system 'tag', '-a', 'Purple', "#{staged_path}/Coda 2.app"
   end
end
