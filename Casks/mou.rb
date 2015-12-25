cask 'mou' do
  version :latest
  sha256 :no_check

  url 'http://25.io/mou/download/Mou.zip'
  appcast 'http://25.io/mou/up/updates.xml',
          :sha256 => '5bb23af89c54eb3d7e124a4654f001e3582626d0f47a902c6918a6263a8eb390'
  name 'Mou'
  homepage 'http://25.io/mou/'
  license :commercial

  app 'Mou.app'

  zap :delete => [
                  '~/Library/Preferences/com.mouapp.Mou.plist',
                  '~/Library/Preferences/com.mouapp.Mou.LSSharedFileList.plist',
                  '~/Library/Application Support/Mou',
                 ]
end
